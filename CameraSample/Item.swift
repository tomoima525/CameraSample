//
//  Item.swift
//  CameraSample
//
//  Created by Tomoaki Imai on 2017/09/02.
//  Copyright © 2017 Tomoaki Imai. All rights reserved.
//

import UIKit

class Item: NSObject {
    let name: String
    let valueInDollars: Int
    let serialNumber: String?
    let dateCreated: Date
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["foo", "baa", "moo"]
            let nouns = ["dog", "cat", "bear"]
            
            let randomNoun = nouns[Int(arc4random_uniform(UInt32(nouns.count)))]
            let randomAdjective = adjectives[Int(arc4random_uniform(UInt32(adjectives.count)))]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name: "test", serialNumber: nil, valueInDollars: 0)
        }
    }
}
