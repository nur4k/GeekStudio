//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Nur_013 on 12/12/22.
//

import Foundation
import UIKit

class TableViewCellViewModel: TableViewCellViewModelType{
   
    
    private var profile: Profile
    
    var fullName: String{
        return profile.name
    }
    var price: String{
        return String(describing: profile.price)
    }
    var image: String{
        return String(describing: profile.image)
    }
   
    init(profile: Profile) {
        self.profile = profile
    }
}
