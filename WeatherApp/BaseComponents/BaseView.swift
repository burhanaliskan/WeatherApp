//
//  BaseView.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 6.10.2022.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
        configure()
    }
    
    func setup() {}
    func configure(){}
}
