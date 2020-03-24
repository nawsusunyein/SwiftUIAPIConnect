//
//  ContentViewModel.swift
//  SwiftUIAPIConnect
//
//  Created by techfun on 2020/03/24.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject{
    let urlSession = URLSession(configuration: URLSessionConfiguration.default)
    @Published var quotes: [KanyeQuote] = []
}

extension ContentViewModel{
    func getQuote(){
        guard let quoteURL = URL(string: "https://api.kanye.rest") else{
            return
        }
        
        _ = urlSession.dataTaskPublisher(for: quoteURL).map{(data,response) -> Data in
            return data
        }.tryMap{(data) -> KanyeQuote in
            let jsonDecoder = JSONDecoder()
            return try jsonDecoder.decode(KanyeQuote.self, from: data)
        }.receive(on: DispatchQueue.main).sink(receiveCompletion: {(subscriber) in
            
            switch subscriber{
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            case .finished:
                break
            }
        }){[unowned self](quote) in
            self.quotes.insert(quote, at: 0)
        }
    }
}
