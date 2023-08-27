//
//  MaterialView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import Foundation
import SwiftUI

struct MaterialView: UIViewRepresentable {
    
    let material: UIBlurEffect.Style
    
    init(_ material: UIBlurEffect.Style) {
        self.material = material
    }
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView(effect: UIBlurEffect(style: material))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: material)
    }
}
