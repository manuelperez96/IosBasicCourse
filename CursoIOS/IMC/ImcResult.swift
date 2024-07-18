//
//  ImcResult.swift
//  CursoIOS
//
//  Created by Manuel Perez on 18/7/24.
//

import SwiftUI

struct ImcResult: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        VStack {
            Text("Tu resultado").font(.title).bold().foregroundColor(.white)
            InformationView(result: calculateImc(weight: userWeight, height: userHeight))
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundApp)
    }
    
    func calculateImc(weight: Double, height: Double) -> Double {
        return weight / pow(height / 100, 2)
    }
}

struct InformationView: View {
    let result: Double
    
    var body: some View {
        VStack {
            Text("Bueno").foregroundColor(.green).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold().foregroundColor(.white)
            
        }
    }
}



#Preview {
    ImcResult(userWeight: 70, userHeight: 170)
}
