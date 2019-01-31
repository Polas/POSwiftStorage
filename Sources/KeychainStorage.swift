//
//  KeychainStorage.swift
//
//
//  Created by Alexander Boriskov on 20/12/2018.
//  Copyright © 2018 Alexander. All rights reserved.
//

import Foundation
import Keychain

class KeychainStorage: IStorage{
    func load<T>(_ type: T.Type, key: String) -> T? where T : Decodable {
        if let str = Keychain.load(key),
            let data = str.data(using: .utf8),
            let value = try? JSONDecoder().decode(type, from: data){
            return value
        }
        return nil
    }
    
    func save<T>(_ value: T, key: String) -> Bool where T : Encodable {
        if let data = try? JSONEncoder().encode(value),
            let str = String(data: data, encoding: String.Encoding.utf8),
            Keychain.save(str, forKey: key){
            return true
        }else{
            return false;
        }
    }
}
