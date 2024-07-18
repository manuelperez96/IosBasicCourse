//
//  TestExample.swift
//  CursoIOS
//
//  Created by Manuel Perez on 16/7/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.system(size: 40))
        }
    }
}

#Preview {
    TextExample()
}

