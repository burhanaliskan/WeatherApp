//
//  GenericValueProtocol.swift
//  WeatherApp
//
//  Created by Burhan Alışkan on 6.10.2022.
//

import Foundation

protocol GenericValueProtocol {
    
    associatedtype Value
    
    var value: Value {get}
}
