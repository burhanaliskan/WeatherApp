//
//  IconLabelView.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 14.10.2022.
//

import UIKit

class IconLabelView: GenericBaseView<IconLabelViewModel> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [firstLabel, iconImage, secondLabel, thirdLabel])
        return temp
    }()
    
    private lazy var firstLabel: UILabel = {
        let temp = UILabel()
        return temp
    }()
    
    private lazy var iconImage: UIImageView = {
        let temp = UIImageView()
        temp.clipsToBounds = true
        temp.contentMode = .scaleAspectFit
        temp.heightAnchor.constraint(equalToConstant: 30).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 30).isActive = true
        return temp
    }()
    
    private lazy var secondLabel: UILabel = {
        let temp = UILabel()
        return temp
    }()
    
    private lazy var thirdLabel: UILabel = {
        let temp = UILabel()
        return temp
    }()
    
    override func setup() {
        super.setup()
        addComponents()
    }
    
    override func loadData() {
        super.loadData()
        guard let data = returnData() else {return}
        configureLabels(iconLabelData: data)
        configureImageView(iconLabelData: data)
        configureStackView(iconLabelData: data)
    }
    
    private func addComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        containerView.autoLayoutView()
        mainStackView.autoLayoutView()
    }
    
    private func configureStackView(iconLabelData: IconLabelViewModel) {
        mainStackView.alignment = iconLabelData.stackViewAligment
        mainStackView.distribution = iconLabelData.stackViewDistribution
        mainStackView.spacing = iconLabelData.spacing
        mainStackView.axis = iconLabelData.stackViewAxis
    }
    
    private func configureLabels(iconLabelData: IconLabelViewModel) {
        configureLabel(label: firstLabel, text: iconLabelData.firstLabelText)
        configureLabel(label: secondLabel, text: iconLabelData.secondLabelText)
        configureLabel(label: thirdLabel, text: iconLabelData.thirdLabelText)
    }
    
    private func configureLabel(label: UILabel, text: String?) {
        label.isHidden = text != nil ? false : true
        label.text = text
    }
    
    private func configureImageView(iconLabelData: IconLabelViewModel) {
        iconImage.isHidden = iconLabelData.iconImage != nil ? false : true
        iconImage.image = iconLabelData.iconImage
    }
}
