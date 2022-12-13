//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Nur_013 on 12/12/22.
//

import Foundation

class ViewModel: TabelViewViewModelType{
    
    private var selectedIndexPath: IndexPath?
    
     var profiles = [
        Profile(name: "Bitcoin", image: "bitcoin", price: 17.400),
        Profile(name: "Cardano", image: "cardano", price: 0.312),
        Profile(name: "Aavve Coin", image: "aave", price: 62.8),
        Profile(name: "Coin", image: "coin", price: 291.90),
        Profile(name: "Dash", image: "dash", price: 151.0),
        Profile(name: "Dogecoin", image: "doge", price: 0.930),
        Profile(name: "Ethereum", image: "eth", price: 1307.2),
        Profile(name: "Nano", image: "nano", price: 43.9),
        Profile(name: "Neo", image: "neo", price: 50.0),
        Profile(name: "Polkadot", image: "dot", price: 5.23),
        Profile(name: "Stellar-Coin", image: "stl", price: 0.0867),
        Profile(name: "Tether", image: "tether", price: 1.02),
        Profile(name: "Tron", image: "trx", price: 213.76),
        Profile(name: "Binance USD", image: "binance", price: 1.00),
        Profile(name: "BNB", image: "bnb", price: 273.95),
        Profile(name: "USD Coin", image: "dollar", price: 1.00),
        Profile(name: "XRP", image: "xrp", price: 0.3909),
        Profile(name: "Polygon", image: "polygon", price: 0.91),
        Profile(name: "Currency", image: "currency", price: 68.216),
        Profile(name: "DAI", image: "dai", price: 1.01),
        Profile(name: "Litecoin", image: "litecoin", price: 77.82),
        Profile(name: "Shiba", image: "shiba", price: 0.00016),
        Profile(name: "Uniswap", image: "uniswap", price: 6.14),
        Profile(name: "Cosmos", image: "cosmos", price: 9.59),
        Profile(name: "Monero", image: "monero", price: 151.30)
]

    func numberOfRows() -> Int{
        return profiles.count
    }
    func cellViewModelType(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    func searchResult(searchText: String) -> [Profile]{
        var profiles = profiles
        profiles.removeAll { profile in
            if searchText == "" {
                return false
            }else{
                return profile.name.lowercased() != searchText.lowercased()
            }
        }
        return profiles
    }
}
