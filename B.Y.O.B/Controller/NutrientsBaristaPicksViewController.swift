//
//  NutrientsBaristaPicksViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class NutrientsBaristPicksViewController: UIViewController {
    
    let detailsStackView = UIStackView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.spacing = 10
        $0.distribution = .fillEqually
    }
    
    lazy var doneButton = UIButton(type: .system).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .tanTitle
        $0.setTitleColor(.tanBG, for: .normal)
        $0.setTitle("Done", for: .normal)
        $0.layer.cornerRadius = 10
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        $0.clipsToBounds = true
        $0.addTarget(self, action: #selector(doneButtonPressed), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields(for: ["Calories", "Protein", "Carbs", "Fats", "Sugar", "Caffeine"])
        setupViews()
        view.backgroundColor = .tanBG
    }
    
    var data = [String: Int]()
    var prevModel: FIRNutrientsModel?
    
    var parentVC: CreateBaristaPicksViewController!
    
    @objc func doneButtonPressed() {
        // save model
        let model = FIRNutrientsModel.model(from: data)
        parentVC.nutrientsModel = model
        dismiss(animated: true, completion: nil)
    }
    
    var currentTextField: UITextField?
    
    @objc func doneTypingButtonPressed() {
        guard let currentTextField = currentTextField else {
            return
        }
        
        
        currentTextField.resignFirstResponder()
        fadeInAll()
        var addon = "g"
        currentTextField.text = currentTextField.text?.replacingOccurrences(of: "mg", with: "")
        currentTextField.text = currentTextField.text?.replacingOccurrences(of: "g", with: "")
        let value = Int(currentTextField.text ?? "0") ?? 0
        data.updateValue(value, forKey: currentTextField.placeholder?.replacingOccurrences(of: "Amount of ", with: "").lowercased() ?? "" )
        if let placeholder = currentTextField.placeholder, placeholder.contains("Caffeine") {
            addon = "mg"
        }
        
        currentTextField.text = "\(currentTextField.text ?? "")\(addon)"
        
        animateDown()
        
    }
    
    func setupViews() {
        view.addSubview(detailsStackView)
        view.addSubview(doneButton)
        doneButton.anchor(top: nil, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 40, bottom: 10, right: 40), size: CGSize(width: 0, height: 60))
        
        detailsStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: doneButton.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
    
    func setupTextFields(for nutrientTitles: [String]) {
        
        if let prevModel = prevModel {
            let dict = FIRNutrientsModel.dict(from: prevModel)
            data = dict
            nutrientTitles.forEach {
                let key = $0.lowercased()
                if dict[key] ?? 0 <= 0 {
                    createTextField(title: $0, value: nil)
                } else if let value = dict[key] {
                    if key == "caffeine" {
                        createTextField(title: $0, value: String(value) + "mg")
                    } else {
                        createTextField(title: $0, value: String(value) + "g")
                    }
                    
                }
            }
            return
        }
        
        nutrientTitles.forEach {
            createTextField(title: $0, value: nil)
        }
    }
    
    func createTextField(title: String, value: String?) {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fillEqually
        
        
        let label = UILabel()
        label.text = title + ":"
        label.textAlignment = .left
        label.textColor = .tanTitle
        stackView.addArrangedSubview(label)
        
        let textField = UITextField()
        textField.placeholder = "Amount of \(title)"
        textField.keyboardType = .decimalPad
        textField.textColor = .tanTitle
        textField.delegate = self
        if let text = value {
            textField.text = text
        }
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTypingButtonPressed))
        let spacing = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolbar.setItems([spacing, doneButton, spacing], animated: false)
        textField.inputAccessoryView = toolbar
        
        stackView.addArrangedSubview(textField)
        detailsStackView.addArrangedSubview(stackView)
    }
    
    func fadeOutAll(but view: UIView) {
        detailsStackView.arrangedSubviews.forEach {
            if !$0.subviews.contains(view) {
                Animations.fadeOut(view: $0)
            }
        }
    }
    
    func fadeInAll() {
        detailsStackView.arrangedSubviews.forEach { subview in
            UIView.animate(withDuration: 1.0, animations: {
                subview.alpha = 1.0
            })
        }
    }
    
    func animateUp(view: UIView) {
        UIView.animate(withDuration: 1.0) {
            let index = CGFloat(self.detailsStackView.arrangedSubviews.lastIndex(of: view) ?? 0)
            if index < 4 {
                return
            }
            var devide: CGFloat = 0
            if index == 4 {
                devide = 5
            } else if index == 5 {
                devide = 3
            }
            self.detailsStackView.transform = CGAffineTransform.init(translationX: 0, y: -self.view.frame.height/devide)
        }
    }
    
    func animateDown() {
        UIView.animate(withDuration: 1.0) {
            self.detailsStackView.transform = CGAffineTransform.identity
        }
    }
}

extension NutrientsBaristPicksViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        fadeOutAll(but: textField)
        currentTextField = textField
        detailsStackView.arrangedSubviews.forEach {
            if $0.subviews.contains(textField) {
                animateUp(view: $0)
            }
        }
    }
}
