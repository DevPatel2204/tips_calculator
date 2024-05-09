//
//  ContentView.swift
//  tips_calculator
//
//  Created by Dev Patel on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        ZStack{
            Image("Money")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, height: 150)
        }
        Spacer()
        VStack{
            HStack{
                Image("dollar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50,height: 50)
                    .padding(30)
                Text("Tip Calculator")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
            }
            HStack{
                Text("$")
                TextField("Amount",text:$total)
            }
            HStack{
                Slider(value:$tipPercent , in:1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent/100)")
            }else{
                Text("Please add a numeric Value")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
