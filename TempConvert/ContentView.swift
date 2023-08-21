//
//  ContentView.swift
//  TempConvert
//
//  Created by Karlyn Sanders on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var celsiusTemp = 0.0
//    @State private var fTemp = 0.0
//    @State private var showFar = true
    @FocusState private var amountIsFocused: Bool

    var farenTemp: Double {
        (celsiusTemp * 9 / 5) + 32
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Celsius temperature", value: $celsiusTemp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                } header: {
                    Text("Enter degrees in Celsius")
                }
                
                Section {
                    Text("\(farenTemp)")
                }header: {
                    Text("The temp in F is:")
                }
            }
            .navigationTitle("Temperature Converter")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                        
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
