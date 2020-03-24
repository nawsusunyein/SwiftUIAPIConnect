//
//  Quote.swift
//  SwiftUIAPIConnect
//
//  Created by techfun on 2020/03/24.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Foundation

struct Quote : Codable, Identifiable{
    var id: String
    let quote: String
    let length: String
    let author: String
    let tags: [String]
    let category: String
    let date: Date
    let title: String
    let permalink: URL
    let background: URL
}

extension Quote{
    static func generateQuote() -> Quote{
       return Quote(id: "\(Int.random(in: 0...10000000))", quote: String.randomAlphaNumericString(length: 100), length: "20", author: "", tags: [], category: "", date: Date(), title: String.randomAlphaNumericString(length: 10), permalink: URL(string: "https://google.com")!, background: URL(string: "https://google.com")!)
    }
}
