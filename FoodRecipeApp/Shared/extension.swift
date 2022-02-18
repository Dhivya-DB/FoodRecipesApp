//
//  extension.swift
//  recreationChallenge
//
//  Created by Dhivyabharathi Rathinakumar on 03/01/22.
//

import Foundation
import UIKit
import SwiftUI

extension Color {
    
    static var arsenic: Color {
        return Color("Arsenic")
    }
    
    static var crayola: Color {
        return Color("Crayola")
    }
    
    static var gold: Color {
        return Color("Gold")
    }
    
    static var silver: Color {
        return Color("Silver Chalice")
    }
}


extension Font {
    
    
    static func poppins(size: CGFloat) -> Font {
        return Font.custom("Poppins-Bold", size: size)
    }
    static func poppinsBlack(size: CGFloat) -> Font {
        return Font.custom("Poppins-Black", size: size)
    }
    
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.silver)
            .padding(10)
    }
}
