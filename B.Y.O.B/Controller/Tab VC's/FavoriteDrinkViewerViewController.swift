//
//  FavoriteDrinkViewerViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/27/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

final class FavoriteDrinkViewerViewController: UIViewController {
    
    var drink: UDDrinkModel!
    
    let scrollView = UIScrollView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.bounces = true
        $0.alwaysBounceVertical = true
        $0.alwaysBounceHorizontal = false
    }
    
    var titleLabel = UILabel().configured {
        $0.text = "My Coffee Drink"
        $0.font = UIFont.boldSystemFont(ofSize: 28)
        $0.textColor = .tanTitle
    }
    
    lazy var backButton = UIButton().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Back", for: UIControl.State.normal)
        $0.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        $0.titleLabel?.textAlignment = .center
        $0.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }

    //Possibility of using variable keys to define new infoviews
    let baseDrinkInfoView = InfoView()
    let milkInfoView = InfoView()
    let syrupInfoView = InfoView()
    let extraInfoView = InfoView()
    let nutritionalFactsLabel = UILabel()
    let tallInfoView = InfoView()
    let grandeInfoView = InfoView()
    let ventiInfoView = InfoView()
    
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
    
    var contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .tanBG
        setupInfoViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.setNeedsLayout()
        scrollView.contentSize = CGSize(width: view.frame.width - 20, height: calculatedHeight())
    }
    
    func setupInfoViews() {
        var calories: Float = 0
        var protein: Float = 0
        var carbs: Float = 0
        var sugar: Float = 0
        
        // data to UI
        titleLabel.text = drink.name
        let spacer = " - "
        let coffeeBase = CoffeeBaseModel.getStaticModel(of: drink.baseType)
        baseDrinkInfoView.setTitle(with: "Type")
        baseDrinkInfoView.addInfo(with: spacer + coffeeBase.name)
        // NOTE: There is a more efficient way to do this using inheretence of protocols or classes
        milkInfoView.setTitle(with: "Milk Servings")
        for (milk, servings) in drink.milkServings {
            let milkModel = MilkModel.getStaticModel(of: milk)
            milkInfoView.addInfo(with: spacer + milkModel.name + ": \(servings)" )
            calories += milkModel.caloriesPer2oz
            protein += milkModel.protein
            carbs += milkModel.carbs
            sugar += milkModel.sugar
        }
        
        syrupInfoView.setTitle(with: "Syrup Servings")
        for (syrup, servings) in drink.syrupServings {
            let syrupModel = SyrupModel.getStaticModel(of: syrup)
            syrupInfoView.addInfo(with: spacer + syrupModel.name + ": \(servings)")
            calories += syrupModel.calories
            protein += syrupModel.protein
            carbs += syrupModel.carbs
            sugar += syrupModel.sugar
        }
        
        extraInfoView.setTitle(with: "Extra")
        let extraModel = ExtraModel.getStaticModel(of: drink.extraType)
        extraInfoView.addInfo(with: extraModel.name)
        
        // calculations for nutritional facts for
        tallInfoView.setTitle(with: "Tall")
        grandeInfoView.setTitle(with: "Grande")
        ventiInfoView.setTitle(with: "Venti")
        [tallInfoView, grandeInfoView, ventiInfoView].forEach {
            $0.addInfo(with: "Calories: \(calories + Float(coffeeBase.tall))g")
            $0.addInfo(with: "Protein: \(protein)g")
            $0.addInfo(with: "Carbs: \(carbs)g")
            $0.addInfo(with: "Sugar: \(sugar)")
        }
        setupScrollView()
    }
    
    func calculatedHeight() -> CGFloat {
        var labelsCount = 2
        
        [baseDrinkInfoView, milkInfoView, syrupInfoView, extraInfoView, tallInfoView, grandeInfoView, ventiInfoView].forEach {
            labelsCount += $0.infoLabels.count + 1
        }
        return CGFloat(labelsCount * 52)
    }
    
    private func setupViews() {
        view.addSubview(scrollView)
        view.addSubview(backButton)
        scrollView.addSubview(contentView)
        
        scrollView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: backButton.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10))
        
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: scrollView.trailingAnchor, padding: .zero, size: CGSize(width: 0, height: calculatedHeight()))
        
        backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        backButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width * 0.025).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
    }
    
    func setupScrollView() {
        contentView.addSubview(titleLabel)
        
        titleLabel.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: scrollView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10), size: CGSize(width: 0, height: 50))
        
        var recentView: UIView = titleLabel
        [baseDrinkInfoView, milkInfoView, syrupInfoView, extraInfoView, tallInfoView, grandeInfoView, ventiInfoView].forEach {
            let labels = $0.infoLabels.count// the extra one is the title
            let height = 50 + (labels * 50)
            contentView.addSubview($0)
            $0.anchor(top: recentView.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: height))
            recentView = $0
        }
    }
}
