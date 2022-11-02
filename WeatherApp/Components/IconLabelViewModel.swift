//
//  IconLabelViewModel.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 14.10.2022.
//

import UIKit

class IconLabelViewModel {
    
    let firstLabelText: String?
    let iconImage: UIImage?
    let secondLabelText: String?
    let thirdLabelText: String?
    let stackViewAligment: UIStackView.Alignment
    let stackViewDistribution: UIStackView.Distribution
    let stackViewAxis: NSLayoutConstraint.Axis
    let spacing: CGFloat
    
    init(firstLabelText: String? = nil,
         iconImage: UIImage? = nil,
         secondLabelText: String? = nil,
         thirdLabelText: String? = nil,
         stackViewAligment: UIStackView.Alignment = .center,
         stackViewDistribution: UIStackView.Distribution = .equalSpacing,
         stackViewAxis: NSLayoutConstraint.Axis = .horizontal,
         spacing: CGFloat = 12) {
        self.firstLabelText = firstLabelText
        self.iconImage = iconImage
        self.secondLabelText = secondLabelText
        self.thirdLabelText = thirdLabelText
        self.stackViewAligment = stackViewAligment
        self.stackViewDistribution = stackViewDistribution
        self.stackViewAxis = stackViewAxis
        self.spacing = spacing
    }
}
