//
//  KanyeQuotes.swift
//  SwiftUIAPIConnect
//
//  Created by techfun on 2020/03/24.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Foundation

struct KanyeQuote: Codable,Identifiable {
    let quote: String
    let id = UUID()
    let date = Date()
    
    private enum CodingKeys: String, CodingKey{
        case quote
    }
}

//MARK:Generator

extension KanyeQuote{
    static func generateQuote() -> KanyeQuote{
        return KanyeQuote(quote: String.randomAlphaNumericString(length: 100))
    }
}
