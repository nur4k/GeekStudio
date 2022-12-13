//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Nur_013 on 12/12/22.
//

import Foundation

protocol TabelViewViewModelType {
    
    func numberOfRows() -> Int
    
    func cellViewModelType(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?

}
