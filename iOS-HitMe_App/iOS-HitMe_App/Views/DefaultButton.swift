//
//  DefaultButton.swift
//  iOS-HitMe_App
//
//  Created by Olesya Khurmuzakiy on 27.03.2024.
//

import SwiftUI

struct DefaultButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text("Hit me!")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
        }
        .padding()
    }
}
