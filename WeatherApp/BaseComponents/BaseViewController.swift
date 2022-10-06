//
//  BaseViewController.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 6.10.2022.
//

import UIKit

class BaseViewController<V>: UIViewController {
    
    var viewModel: V!
    
    convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
}
