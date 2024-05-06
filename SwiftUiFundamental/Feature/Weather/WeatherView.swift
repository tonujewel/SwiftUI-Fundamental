//
//  WeatherView.swift
//  SwiftUiFundamental
//
//  Created by Jewel Rana on 7/5/24.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Text("Dhaka, BD")
                    .font(.system(size: 32,weight: .medium, design: .rounded))
                
                VStack (spacing: 8){
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 200)
                    
                    
                    Text("30°")
                        .font(.system(size: 76,weight: .medium, design: .rounded))
                        .foregroundColor(.white )
                }
                
                Spacer()
                
            }
            
            
            
        }
    }
}

#Preview {
    WeatherView()
}
