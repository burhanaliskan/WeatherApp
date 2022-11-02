//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 6.10.2022.
//

import UIKit

class WeatherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        let iconViewModel = IconLabelViewModel(secondLabelText: "Sunny", thirdLabelText: "34%", spacing: 40)
        let icon = IconLabelView(data: iconViewModel)
      
        icon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(icon)
        
        icon.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        icon.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
}
