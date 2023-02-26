//
//  CustomButtons.swift
//  Edutainment
//
//  Created by Eric Johnson on 2/25/23.
//

import SwiftUI

struct MyButton: ViewModifier {
    var colorLight : Color
    var colorDark : Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 30, height: 30)
            .background(LinearGradient(gradient: Gradient(colors: [colorLight, colorDark, colorLight]), startPoint: .top, endPoint: .bottom))
            .imageScale(.large)
            .clipShape(RoundedRectangle(cornerRadius: (10)))
            .foregroundColor(.white)
            .scaleEffect(1.5)
            .padding(10)
    }
}

extension View {
    func redMinusButton() -> some View {
        modifier(MyButton(colorLight: .pink, colorDark: .red))
    }
}

extension View {
    func greenPlusButton() -> some View {
        modifier(MyButton(colorLight: .mint, colorDark: .green))
    }
}

struct MySelectButton: ViewModifier {
    var colorLight : Color
    var colorDark : Color
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 100, height: 50)
            .background(LinearGradient(gradient: Gradient(colors: [.teal, .blue, .teal]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func selectButton() -> some View {
        modifier(MySelectButton(colorLight: .teal, colorDark: .blue))
    }
}


struct CustomButtons: View {
    var body: some View {
        HStack {
            Button {
                // Code Here
            } label: {
                Image(systemName: "minus")
                    .redMinusButton()
            }
            
            Button {
                // Code Here
            } label: {
                Image(systemName: "plus")
                    .greenPlusButton()
            }
            
            Button {
                // Code Here
            } label: {
                Text("Select")
                    .selectButton()
            }
        }
    }
}

struct CustomButtons_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtons()
    }
}
