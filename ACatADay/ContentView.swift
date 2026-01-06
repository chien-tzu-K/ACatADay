//
//  ContentView.swift
//  ACatADay
//
//  Created by 孜 on 2026/1/6.
//

import SwiftUI

struct ContentView: View {

    let cats = ["cat1", "cat2", "cat3", "cat4", "cat5", "cat6"]
    @State private var selectedCat: String?

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
                

            if selectedCat != nil {
                GeometryReader { geo in
                    Image(selectedCat!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .position(
                            x: geo.size.width * 0.43,
                            y: geo.size.height * 0.55
                        )
                }
            }

            GeometryReader { geo in
                Image(.frontBack)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .position(
                        x: geo.size.width * 0.5,
                        y: geo.size.height * 0.8
                    )
            }

            GeometryReader { geo in
                Image(.frontTop)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .position(
                        x: geo.size.width * 0.5,
                        y: geo.size.height * 0.13
                    )
            }

            GeometryReader { geo in
                Image(.frontBottom)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500)
                    .position(
                        x: geo.size.width * 0.5,
                        y: geo.size.height * 0.9
                    )
            }

            Button {
                selectedCat = cats.randomElement()
            } label: {
                Image(.catButton)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
            }
            .position(x: UIScreen.main.bounds.width / 2, y: 680)

        }
    }
}

#Preview {
    ContentView()
}
