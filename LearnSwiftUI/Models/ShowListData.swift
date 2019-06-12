//
//  ShowListData.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/6.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI

let thisShowListData: [ShowListInfo] = ShowListData.load("showlist.json")

class ShowListData {
    
    class func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
    
}
