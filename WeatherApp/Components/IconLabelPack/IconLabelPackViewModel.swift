//
//  IconLabelPackViewModel.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 2.11.2022.
//

import UIKit

class IconLabelPackViewModel {
    
    let iconLabelViewModels: [IconLabelViewModel]
    let stackViewAligment: UIStackView.Alignment
    let stackViewDistribution: UIStackView.Distribution
    let stackViewAxis: NSLayoutConstraint.Axis
    let spacing: CGFloat
    
    init(iconLabelViewModels: [IconLabelViewModel],
         stackViewAligment: UIStackView.Alignment = .fill,
         stackViewDistribution: UIStackView.Distribution = .fillEqually,
         stackViewAxis: NSLayoutConstraint.Axis = .horizontal,
         spacing: CGFloat = 40) {
        self.iconLabelViewModels = iconLabelViewModels
        self.stackViewAligment = stackViewAligment
        self.stackViewDistribution = stackViewDistribution
        self.stackViewAxis = stackViewAxis
        self.spacing = spacing
    }
}
