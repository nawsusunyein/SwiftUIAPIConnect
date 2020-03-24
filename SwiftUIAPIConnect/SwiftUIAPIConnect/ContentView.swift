//
//  ContentView.swift
//  SwiftUIAPIConnect
//
//  Created by techfun on 2020/03/24.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel : ContentViewModel
    
    var body: some View {
        NavigationView{
            List(viewModel.quotes){quote in
                QuoteRow(quote: quote)
            }.navigationBarItems(trailing:
                Button(action:{
                    self.viewModel.getQuote()
                },label: {
                    Text("Fetch")
                })
            ).navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
