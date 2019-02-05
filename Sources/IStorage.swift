//
//  IStorage.swift
// 
//
//  Created by Alexander Boriskov on 20/12/2018.
//  Copyright © 2018 Alexander. All rights reserved.
//

import Foundation

public protocol IStorage {
    func load<T:Decodable>(_ type:T.Type, key: String) -> T?
    func save<T:Encodable>(_ value:T, key: String) -> Bool
}
