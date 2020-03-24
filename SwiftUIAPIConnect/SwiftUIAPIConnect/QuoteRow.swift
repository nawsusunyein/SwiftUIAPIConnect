//
//  QuoteRow.swift
//  SwiftUIAPIConnect
//
//  Created by techfun on 2020/03/24.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct QuoteRow: View {
    
    var quote : KanyeQuote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(quote.quote).fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct QuoteRow_Previews: PreviewProvider {
    static var previews: some View {
        QuoteRow(quote: .generateQuote())
    }
}
