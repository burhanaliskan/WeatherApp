//
//  UIView+Extensions.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 2.11.2022.
//

import UIKit

extension UIView {
    
    func autoLayoutView(edgeInsets: UIEdgeInsets = UIEdgeInsets(top: .zero, left: .zero, bottom: .zero, right: .zero)) {
        guard let superview = superview else {return}
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: edgeInsets.top),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: edgeInsets.left),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: edgeInsets.right),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: edgeInsets.bottom)
        ])
    }
    
}
