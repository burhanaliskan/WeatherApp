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
        
        
        let iconViewModel1 = IconLabelViewModel(iconImage: UIImage(systemName: "square.and.arrow.up"),
                                                secondLabelText: "Sunny",
                                                thirdLabelText: "05:04",
                                                stackViewAxis: .vertical,
                                                spacing: 8)
        
        let iconViewModel2 = IconLabelViewModel(iconImage: UIImage(systemName: "square.and.arrow.up"),
                                                secondLabelText: "Sunrise",
                                                thirdLabelText: "05:04",
                                                stackViewAxis: .vertical,
                                                spacing: 8)
        
        let iconViewModel3 = IconLabelViewModel(iconImage: UIImage(systemName: "square.and.arrow.up"),
                                                secondLabelText: "Sunset",
                                                thirdLabelText: "05:04",
                                                stackViewAxis: .vertical,
                                                spacing: 8)
        
        let iconLabelPackViewModel = IconLabelPackViewModel(iconLabelViewModels: [iconViewModel1, iconViewModel2, iconViewModel3])
        
        let icon = IconLabelPackView(data: iconLabelPackViewModel)
      
        icon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(icon)
        
        icon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        icon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        icon.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
}
