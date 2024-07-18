//
//  ButtonExample.swift
//  CursoIOS
//
//  Created by Manuel Perez on 16/7/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Counter()
    }
}

struct Counter:View {
    @State var counter = 0
    
    var body: some View {
        Button(action: {counter += 1}) {
            Text("Pressed: \(counter)").padding().foregroundColor(.white).background(.red).cornerRadius(100)
        }.buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    ButtonExample()
}
