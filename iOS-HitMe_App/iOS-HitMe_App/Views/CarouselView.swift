//
//  CarouselView.swift
//  iOS-HitMe_App
//
//  Created by Olesya Khurmuzakiy on 27.03.2024.
//

import SwiftUI

struct CarouselView: View {
    @StateObject private var viewModel = CarouselViewModel()

    var body: some View {
        VStack {
            Spacer()
            TabView(selection: $viewModel.currentIndex) {
                ForEach(flagsData.indices, id: \.self) { index in
                    Image(systemName: flagsData[index].flagName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .tag(index)
                        .foregroundColor(flagsData[index].color)
                        .rotationEffect(.degrees(-90))
                }
            }
            .border(.black, width: 4)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .rotationEffect(.degrees(90))
            .frame(width: 100, height: 100)
            .padding()

            Spacer()
            DefaultButton {
                viewModel.scrollFlags()
            }
            .padding()
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
