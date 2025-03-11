//
//  AppleView.swift
//  SwiftUI_Coordinator
//
//  Created by Akbarshah Jumanazarov on 3/11/25.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Push Banana") {
                coordinator.push(.banana)
            }
            
            Button("Present Lemon") {
                coordinator.present(sheet: .lemon)
            }
            
            Button("Present Olive") {
                coordinator.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("Apple")
    }
}

struct BananaView: View {
    
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Push Carrot") {
                coordinator.push(.carrot)
            }
            
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("Banana")
    }
}

struct CarrotView: View {
    
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Pop") {
                coordinator.pop()
            }
            
            Button("Pop to root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("Carrot")
    }
}

struct LemonView: View {
    
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Dimiss") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("Lemon")
    }
}

struct OliveView: View {
    
    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Dimiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("Olive")
    }
}
