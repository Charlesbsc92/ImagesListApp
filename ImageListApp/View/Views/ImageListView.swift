//
//  ContentView.swift
//  ImageListApp
//
//  Created by Charles on 29/09/24.
//

import SwiftUI

struct ImageListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ImageListView()
}
