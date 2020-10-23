//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdul Ahad Khan on 2020-10-23.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    let numberOfPeople = ["2","3","4","5","6","7","8"]
    @State private var selectedNumberOfPeople = 2
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Check Amount", text: $amount)
                    Text("Check amount is $\(amount)")
                }
                Section {
                    Picker("# of People", selection: $selectedNumberOfPeople) {
                        ForEach(0 ..< numberOfPeople.count) {
                            Text(self.numberOfPeople[$0])
                        }
                    }
                }
            }
            .navigationBarTitle(Text("WeSplit"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
