//
//  ContentView.swift
//  NavigationHeroEffect
//
//  Created by Berkay Dişli on 8.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedProfile: Profile?
    @State private var pushView: Bool = false
    @State private var hideView: (Bool, Bool) = (false, false)
    var body: some View {
        NavigationStack {
            Home(selectedProfile: $selectedProfile, pushView: $pushView)
                .navigationTitle("Profile")
                .navigationDestination(isPresented: $pushView) {
                    DetailView(selectedProfile: $selectedProfile,
                               pushView: $pushView,
                               hideView: $hideView
                    )
                }
        }
        .overlayPreferenceValue(MAnchorKey.self, { value in
            GeometryReader(content: { geometry in
                if let selectedProfile, let anchor = value[selectedProfile.id], !hideView.0 {
                    let rect = geometry[anchor]
                    ImageView(profile: selectedProfile, size: rect.size)
                        .offset(x: rect.minX, y: rect.minY)
                        .animation(.snappy(), value: rect)
                }
            })
        })
    }
}

#Preview {
    ContentView()
}
