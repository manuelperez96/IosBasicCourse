//
//  ImageExample.swift
//  CursoIOS
//
//  Created by Manuel Perez on 16/7/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("picture")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        
        Image(systemName: "figure.walk")
    }
}

#Preview {
    ImageExample()
}
