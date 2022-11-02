//
//  IconLabelPackView.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 2.11.2022.
//

import UIKit

class IconLabelPackView: GenericBaseView<IconLabelPackViewModel> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView()
        return temp
    }()

    override func setup() {
        super.setup()
        addComponents()
    }
    
    override func loadData() {
        super.loadData()
        guard let data = returnData() else {return}
        data.iconLabelViewModels.forEach { iconLabelViewModel in
            let iconLabelView = IconLabelView()
            iconLabelView.setData(value: iconLabelViewModel)
            mainStackView.addArrangedSubview(iconLabelView)
        }
        configureStackView(iconLabelPackData: data)
    }
    
    private func addComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        containerView.autoLayoutView()
        mainStackView.autoLayoutView()
    }
    
    private func configureStackView(iconLabelPackData: IconLabelPackViewModel) {
        mainStackView.alignment = iconLabelPackData.stackViewAligment
        mainStackView.distribution = iconLabelPackData.stackViewDistribution
        mainStackView.spacing = iconLabelPackData.spacing
        mainStackView.axis = iconLabelPackData.stackViewAxis
    }
}
