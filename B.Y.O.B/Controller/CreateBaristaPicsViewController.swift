//
//  CreateBaristaPicsViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

final class CreateBaristaPicksViewController: UIViewController {
    
    lazy var nameTextField = UITextField().configured {
        $0.placeholder = "Drink Name"
        $0.textColor = .tanTitle
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .center
        $0.delegate = self
    }
    
    let imagePickerButton = UIButton().configured {
        $0.setImage(UIImage(named: "image"), for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .center
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.backgroundColor = .tanTitle
        $0.addTarget(self, action: #selector(imagePickerButtonPressed), for: .touchUpInside)
    }
    
    lazy var descriptionTextView = UITextView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Description"
        $0.textColor = .tanTitle
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.delegate = self
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTypingButtonPressed))
        let spacing = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolbar.setItems([spacing, doneButton, spacing], animated: false)
        $0.inputAccessoryView = toolbar
    }
    
    lazy var nutrientsButton = UIButton(type: .system).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .tanTitle
        $0.setTitleColor(.tanBG, for: .normal)
        $0.setTitle("Nutrients", for: .normal)
        $0.addTarget(self, action: #selector(nutrientsButtonPressed), for: .touchUpInside)
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
    }
    
    lazy var orderSteps = UIButton(type: .system).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .tanTitle
        $0.setTitleColor(.tanBG, for: .normal)
        $0.setTitle("Steps", for: .normal)
        $0.addTarget(self, action: #selector(orderStepsPressed), for: .touchUpInside)
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
    }
    
    lazy var backButton = UIButton(type: .system).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .tanTitle
        $0.setTitleColor(.tanBG, for: .normal)
        $0.setTitle("Back", for: .normal)
        $0.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
    }
    
    lazy var saveDrinkButton = UIButton(type: .system).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .tanTitle
        $0.setTitleColor(.tanBG, for: .normal)
        $0.setTitle("Save", for: .normal)
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.addTarget(self, action: #selector(saveDrinkButtonPressed), for: .touchUpInside)
    }

    var drink: FIRDrinkModel? {
        willSet {
            guard let drink = newValue else {
                return
            }
            nutrientsModel = FIRNutrientsModel.model(from: drink.nutrients)
            steps = drink.steps
            drinkType = DrinkType(rawValue: drink.type)
            uuid = drink.uid
            
            descriptionTextView.text = drink.description
            nameTextField.text = drink.name
            UIImage.from(imageURL: drink.imageURL) { (image) in
                self.imagePickerButton.setImage(image, for: .normal)
            }
        }
    }
    
    var newImage = false
    var nutrientsModel: FIRNutrientsModel?
    var selectedImage: UIImage?
    var steps = [String]()
    // Set from BaristPick's ViewController
    var drinkType: DrinkType!
    var uuid: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .tanBG
        setupViews()
        
    }
    
    @objc func saveDrinkButtonPressed() {
        // Upload data to firebase
        if newImage {
            FirebaseService.setDrink(uuid: uuid, name: nameTextField.text ?? "No name", image: selectedImage, description: descriptionTextView.text, nutrients: nutrientsModel, steps: steps, type: drinkType, imageURL: nil)
        } else {
            FirebaseService.setDrink(uuid: uuid, name: nameTextField.text ?? "No name", image: nil, description: descriptionTextView.text, nutrients: nutrientsModel, steps: steps, type: drinkType, imageURL: drink?.imageURL)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @objc func nutrientsButtonPressed() {
        present(NutrientsBaristPicksViewController().configured {
            $0.parentVC = self
            $0.prevModel = nutrientsModel
        }, animated: true, completion: nil)
    }
    
    @objc func orderStepsPressed() {
        
        present(UINavigationController(rootViewController: StepsBaristaPicksViewController().configured {
            $0.baristVC = self
            $0.steps = steps
        }), animated: true, completion: nil)
    }
    
    @objc func imagePickerButtonPressed() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.mediaTypes = ["public.image"]
        present(pickerController, animated: true, completion: nil)
    }
    
    @objc func doneTypingButtonPressed() {
        Animations.identity(view: descriptionTextView)
        Animations.fadeIn(view: nameTextField)
        Animations.fadeIn(view: imagePickerButton)
        descriptionTextView.resignFirstResponder()
    }
    
    @objc func backButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupViews() {
        view.addSubview(nameTextField)
        view.addSubview(imagePickerButton)
        view.addSubview(descriptionTextView)
        view.addSubview(nutrientsButton)
        view.addSubview(orderSteps)
        view.addSubview(saveDrinkButton)
        view.addSubview(backButton)
        nameTextField.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 60))
        
        imagePickerButton.anchor(top: nameTextField.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size:CGSize(width: 200, height: 200))
        imagePickerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        descriptionTextView.anchor(top: imagePickerButton.bottomAnchor, leading: nameTextField.leadingAnchor, bottom: nil, trailing: nameTextField.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 120))
        
        nutrientsButton.anchor(top: descriptionTextView.bottomAnchor, leading: descriptionTextView.leadingAnchor, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 120, height: 60))
        
        orderSteps.anchor(top: descriptionTextView.bottomAnchor, leading: nil, bottom: nil, trailing: descriptionTextView.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 120, height: 60))
        
        saveDrinkButton.anchor(top: orderSteps.bottomAnchor, leading: nil, bottom: nil, trailing: descriptionTextView.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 120, height: 60))
        
      
        backButton.anchor(top: nutrientsButton.bottomAnchor, leading: descriptionTextView.leadingAnchor, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 120, height: 60))
        
    }
}

extension CreateBaristaPicksViewController: UITextViewDelegate, UITextFieldDelegate {
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        Animations.fadeOut(view: imagePickerButton)
        Animations.fadeOut(view: nameTextField)
        Animations.move(view: descriptionTextView, x: 0, y: -descriptionTextView.frame.height)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
        let numberOfChars = newText.count
        return numberOfChars < 241  // 110 is the character limit
        // Need to add max number of lines for textview 
    }
}

extension CreateBaristaPicksViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("did Finish Picking Media")
        print(info)
        
        if let image = info[.originalImage] as? UIImage{
            // Selected Image
            newImage = true
            imagePickerButton.setImage(image, for: .normal)
            selectedImage = image
            dismiss(animated: true, completion: nil)
        }
    }
}
