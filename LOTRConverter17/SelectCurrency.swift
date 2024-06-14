//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Mikołaj on 14/06/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                //Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
                    ForEach(0..<5){_ in 
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                     
                    
                }
                
                //Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                
                //Done button
                Button("Done"){
                    dismiss()
                }
                    .buttonStyle(.borderedProminent)
                    .tint(.brown)
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        //Currency icons
        }
    }
}

#Preview {
    SelectCurrency()
}
