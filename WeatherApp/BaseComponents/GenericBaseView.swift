//
//  GenericBaseView.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 6.10.2022.
//

import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadData()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadData(){}
    
    func setData(value: T?) {
        self.data = value
        loadData()
    }
    
    func returnData() -> T? {
        return data
    }
}
