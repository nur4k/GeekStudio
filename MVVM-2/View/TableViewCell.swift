//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Nur_013 on 12/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var nameCrypto: UILabel!
   
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var imageViewModel: UIImageView!
    
    var filteredData = [String]()
    
    var isSearching = false
   
    weak var viewModel: TableViewCellViewModelType?{
        willSet(viewModel){
            guard let viewModel = viewModel else {return}
            nameCrypto.text = viewModel.fullName
            nameCrypto.textColor = .red
            priceLabel.text = "\(viewModel.price) $"
            priceLabel.textColor = .systemGreen
            imageViewModel.image = UIImage(named: "\(viewModel.image)")
        }
    }
}


    

