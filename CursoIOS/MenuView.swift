//
//  MenuView.swift
//  CursoIOS
//
//  Created by Manuel Perez on 17/7/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: ImcView()) {
                    Text("IMC Calculator")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
