//
//  ItemStore.swift
//  Homepwner
//
//  Created by Sam Reaves on 1/10/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let item = Item(random: true)
        
        allItems.append(item)
        
        return item
    }
    
    func removeItem(_ item: Item) -> Void {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
}
