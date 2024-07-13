//
//  ContentView.swift
//  CursoIOS
//
//  Created by Manuel Perez on 13/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
                
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack {
                Circle().foregroundColor(.cyan)
                Rectangle().foregroundColor(.black)
                Circle().foregroundColor(.purple)
            }
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack {
                Rectangle().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
                
            } .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
