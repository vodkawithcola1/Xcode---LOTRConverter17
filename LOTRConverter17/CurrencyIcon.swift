//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Mikołaj on 14/06/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment:.bottom){
            //Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //Currency Name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius:  25))
    }
}
