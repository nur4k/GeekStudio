//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Nur_013 on 12/12/22.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var search: UISearchBar!
    
    var viewModel: TabelViewViewModelType?
    var model: ViewModel = ViewModel()
    var searchText: String?
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.searchText = searchText
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.searchResult(searchText: searchText ?? "").count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! UITableViewCell
        
        let profiles = model.searchResult(searchText: searchText ?? "")
        let profile = profiles[indexPath.row]
        
        cell.imageView?.image = UIImage(named: profile.image)
        cell.textLabel?.text = profile.name
        cell.detailTextLabel?.text = "\(profile.price)"
        
        return cell
    }
}

