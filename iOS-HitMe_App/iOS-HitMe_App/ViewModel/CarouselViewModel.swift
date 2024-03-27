//
//  CarouselViewModel.swift
//  iOS-HitMe_App
//
//  Created by Olesya Khurmuzakiy on 27.03.2024.
//

import SwiftUI

class CarouselViewModel: ObservableObject {
    @Published var currentIndex = 0

    func scrollFlags() {
        withAnimation(.easeInOut(duration: 1.5)) {
            currentIndex = (currentIndex + 1) % flagsData.count
        }
    }
}

