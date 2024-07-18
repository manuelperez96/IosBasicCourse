//
//  LabelExample.swift
//  CursoIOS
//
//  Created by Manuel Perez on 16/7/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        //Label("SUSCRÍBETE", image: "picture")
        //Label("SUSCRÍBETE", image: "figure.walk")
        Label(
            title: { Text("Label")},
            icon: { Image(systemName: "figure.walk")
                    .resizable()
                    .scaledToFit()
                .frame(width: 20, height: 20)}
            
        )
    }
}

#Preview {
    LabelExample()
}
