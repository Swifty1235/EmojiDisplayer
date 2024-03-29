//
//  ContentView.swift
//  Emoji
//
//  Created by Pedro Romero on 3/28/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🐉, 👨🏻‍🦳, 🧐, 🦧
}

struct ContentView: View {
    @State var selecting: Emoji = .🐉

    var body: some View {
        NavigationView {
            VStack {
                Text(selecting.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selecting) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.palette)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
