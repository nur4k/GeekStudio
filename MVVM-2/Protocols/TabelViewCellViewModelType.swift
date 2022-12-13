//
//  Protocol.swift
//  MVVM-2
//
//  Created by Nur_013 on 13/12/22.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String {get}
    var price: String {get}
    var image: String {get}
}
