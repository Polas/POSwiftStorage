//
//  BundleStorage.swift
//
//
//  Created by Alexander Boriskov on 20/12/2018.
//  Copyright © 2018 Alexander. All rights reserved.
//

import Foundation

open class BundleStorage: IStorage{
    public init(){
        
    }
    
    public func load<T>(_ type: T.Type, key: String) -> T? where T : Decodable {
        if let filePath = Bundle.main.path(forResource: key, ofType: ""),
            let jsonString = try? String(contentsOfFile: filePath),
            let data = jsonString.data(using: .utf8),
            let result = try? JSONDecoder().decode(T.self, from: data){
            return result;
        }
        return nil;
    }
    
    public func save<T>(_ value: T, key: String) -> Bool where T : Encodable {
        assertionFailure("Not supported")
        return false
    }
}
