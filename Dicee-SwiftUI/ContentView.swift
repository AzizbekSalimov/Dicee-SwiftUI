//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Azizbek Salimov on 09.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack {
                    DiceView(n: 1)
                        
                    DiceView(n: 4)
                        
                }
                .padding(.horizontal)
                
                Spacer()
                Button(action: {
                    
                }) {
                    
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        
                }
                .background(Color.teal)
                .cornerRadius(20)
                

                    
                
            }
            
    
        }
      
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}


