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
    //@State var FinalAmount = 0.0
    var body: some View {
        ZStack{
            Image("Money")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, height: 150)
        }
        Spacer()
        VStack{
            HStack(spacing:50){
                Image("dollar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50,height: 50)
                Text("Tip Calculator")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
            }
            Spacer()
            HStack(spacing:50){
                Text("$")
                TextField("Enter Amount",text:$total)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .font(.system(size: 30))
            Spacer()
//            HStack(spacing:30){
//                Text("Tip")
//                TextField("Enter Tip Amount",text:$tipPercent)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
//            .font(.system(size: 30))
            Spacer()
            
//            Button("Calculate Tip"){
//                calculateTip()
//            }
            
//
            HStack{
                Slider(value:$tipPercent , in:1...50, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNumber = Double(total){
                             Text("Tip Amount: Rs\(totalNumber * tipPercent/100, specifier: "%0.2f")")
                         }else {
                             Text("Please enter a numeric input")
                         }
            Button("Calculate"){
                finalAmount()
            }
            
            func finalAmount(){
                
            }
            Spacer()
        
         
        }
        .padding()
    }
}




#Preview {
    ContentView()
}
