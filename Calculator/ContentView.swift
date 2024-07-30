//
//  ContentView.swift
//  Calculator
//
//  Created by Esma Özcan on 30.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var number1 = ""
    @State var number2 = ""
    @State var result = ""
    
    var body: some View {
        VStack {
            
            Text("Hesap Makinesi")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()

            VStack(spacing:30){
                TextField("Bir sayı giriniz...", text: $number1)
                    .padding()
                    .background(Color.black.opacity(0.08))
                    .cornerRadius(15)
                    .keyboardType(.decimalPad)
                
                TextField("Bir sayı giriniz...", text: $number2)
                    .padding()
                    .background(Color.black.opacity(0.08))
                    .cornerRadius(15)

                HStack(spacing:30){
                    VStack{
                        Button("Toplama"){
                            if(Double(number1) != nil && Double(number2) != nil){
                                result = String((Double(number1) ?? 0) + (Double(number2) ?? 0))
                            }
                            else{
                                result = "Hatalı bir sayı girişi yaptınız."
                            }
                            
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        
                        
                        Button("Çıkarma"){
                            if(Double(number1) != nil && Double(number2) != nil){
                                result = String((Double(number1) ?? 0) - (Double(number2) ?? 0))
                            }
                            else{
                                result = "Hatalı bir sayı girişi yaptınız."
                            }
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                    
                    VStack{
                        Button("Çarpma"){
                            if(Double(number1) != nil && Double(number2) != nil){
                                result = String((Double(number1) ?? 0) * (Double(number2) ?? 0))
                            }
                            else{
                                result = "Hatalı bir sayı girişi yaptınız."
                            }
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        
                        Button("Bölme"){
                            if(Double(number1) != nil && Double(number2) != nil){
                                result = String((Double(number1) ?? 0) / (Double(number2) ?? 0))
                            }
                            else{
                                result = "Hatalı bir sayı girişi yaptınız."
                            }
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                }
                
                Text("Sonuç: \(result)")
                    .padding()
                    .font(.largeTitle)
                
                
            }
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
