//
//  WeatherButton.swift
//  SwiftUiFundamental
//
//  Created by Jewel Rana on 7/5/24.
//

import SwiftUI

struct WeacheButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .font(.system(size: 20,weight: .bold,design: .rounded))
    }
}

