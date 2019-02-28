//
//  ViewDrinkViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/20/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//


import UIKit

class ViewDrinkViewController: UIViewController {
    
    var drink: FIRDrinkModel!
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = drink.name
        label.textAlignment = .center
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        return label
    }()
    
    let imageView = UIImageView().configured {
        //Fetch image
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.backgroundColor = .tanTitle
    }
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.bounces = true
        sv.alwaysBounceVertical = true
        sv.alwaysBounceHorizontal = false
        return sv
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        return button
    }()
    
    var contentView = UIView()
    
    var infoLabels = [UIView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()
        setupView()
        createInfoLabels()
        setupScrollView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.setNeedsLayout()
        scrollView.setNeedsLayout()
        scrollView.contentSize = CGSize(width: view.frame.width - 20, height: contentView.bounds.height + 20)
    }
    
    func fetchImage() {
        UIImage.from(imageURL: drink.imageURL) { (image) in
            self.imageView.image = image
        }
    }

    func createInfoLabels() {
        FIRDrinkModel.dict(from: drink).forEach { (key, value) in
            if key == "description" {
                // Use a uitextview instead of label
                let textView = UITextView()
                textView.isUserInteractionEnabled = false
                textView.backgroundColor = .clear
                textView.textColor = .tanTitle
                textView.font = UIFont.systemFont(ofSize: 15)
                textView.text = "\(value)"
                infoLabels.append(textView)
            } else {
                let label = UILabel()
                label.translatesAutoresizingMaskIntoConstraints = false
                label.text = key + ": \(value)"
                label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
                label.textAlignment = .center
                label.lineBreakMode = .byCharWrapping
                label.numberOfLines = 0
                label.textAlignment = .left
                infoLabels.append(label)
            }
        }
    }
    
    func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        titleLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        imageView.anchor(top: titleLabel.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 150, height: 150))
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        backButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width * 0.025).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
      scrollView.anchor(top: imageView.bottomAnchor, leading: view.leadingAnchor, bottom: backButton.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10))
    }
    
    func calculateHeight() -> CGFloat {
        return CGFloat(infoLabels.count * 50)
    }
    
    func calculateHeight(forText text: String) -> CGFloat {
        return CGFloat(25 * (text.count / 48))
    }
    
    func setupScrollView() {
        scrollView.addSubview(contentView)
        
        contentView.anchor(top: scrollView.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        let heightAnchor = contentView.heightAnchor.constraint(equalToConstant: calculateHeight())
        heightAnchor.isActive = true

        var recentView: UIView?
        infoLabels.forEach { view in
            contentView.addSubview(view)
            
            if let textView = view as? UITextView {
                let calculatedConstant = calculateHeight(forText: textView.text)
                // 48 chars per line
                // size += 20 per line
                if let recentView = recentView {
                    textView.anchor(top: recentView.bottomAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: calculatedConstant))
                    
                } else {
                    textView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: calculatedConstant))
                }
                
                // Update contentView Height
                heightAnchor.isActive = false
                contentView.heightAnchor.constraint(equalToConstant: CGFloat(calculateHeight() + calculatedConstant)).isActive = true 
                
            } else if let label = view as? UILabel {
                if let recentView = recentView {
                    // Calculate size of descriptionTextView FOr
                    label.anchor(top: recentView.bottomAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
                } else {
                    label.anchor(top: contentView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 40))
                }
            }
            recentView = view
        }
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
}
