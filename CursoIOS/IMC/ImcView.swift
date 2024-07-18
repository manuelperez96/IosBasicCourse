//
//  ImcView.swift
//  CursoIOS
//
//  Created by Manuel Perez on 17/7/24.
//

import SwiftUI

struct ImcView: View {
    
//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    @State var gender: Gender = Gender.male
    @State var height: Double = 150
    @State var age: Int = 17
    @State var weight: Int = 70
    
    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Hombre", image: "heart.fill", gender: Gender.male, selectedGender: $gender)
                ToggleButton(text: "Mujer", image: "star.fill", gender: Gender.female, selectedGender: $gender)
            }
            HeightCalculator(height: $height)
            HStack {
                CounterComponent(text: "Edad", value: $age)
                CounterComponent(text: "Peso", value: $weight)
            }
            ContinueButton(userWight: Double(weight), userHeight: height)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator").foregroundColor(.white).bold()
            }
        }
//        .navigationTitle("Imc Calculator")
    }
}

struct ToggleButton: View {
    let text: String
    let image: String
    let gender: Gender
    @Binding var selectedGender: Gender
    

    
    var body: some View {
        
        let color = if(gender == selectedGender) {
            Color.backgroundSelectedComponent
        } else {
            Color.backgroundComponent
        }
        
        Button(action: {selectedGender = gender}) {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                InformationText(text: text)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(color)

    }
}



struct HeightCalculator: View {
    @Binding var height: Double
    
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(height)) Cm")
            Slider(value: $height, in: 100...220, step: 1).padding(.horizontal, 16).accentColor(.purple)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

struct CounterComponent: View {
    let text: String
    @Binding var value: Int
    
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: String(value))
            HStack {
                CircleButton(icon: "minus") {
                    if (value == 0) {
                        return
                    }
                    
                    value -= 1
                }
                CircleButton(icon: "plus") {
                    value += 1
                }
            }.padding(.horizontal, 16)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct ContinueButton: View {
    let userWight: Double
    let userHeight: Double
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination:
                            {ImcResult(userWeight: userWight, userHeight: userHeight)}
            ) {
                Text("Calcular")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(.backgroundComponent)
                    .font(.title).bold().foregroundColor(.purple)
            }
        }.frame(maxHeight: 100)
    }
}


struct InformationText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}



struct CircleButton: View {
    let icon: String
    let onPressed: () -> ()
    
    var body: some View {
        Button(action: onPressed)  {
            ZStack {
                Circle().foregroundColor(.purple)
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(24)
                    .foregroundColor(.white)
            }
        }

    }
}

#Preview {
    ImcView()
}
