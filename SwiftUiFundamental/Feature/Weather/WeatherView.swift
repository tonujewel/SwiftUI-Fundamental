//
//  WeatherView.swift
//  SwiftUiFundamental
//
//  Created by Jewel Rana on 7/5/24.
//

import SwiftUI

struct WeatherView: View {
    
    
    @State private var isNight = false
    
    var body: some View {
        
        ZStack{
            
            BackgroundView(isNight: isNight)
            
            VStack{
                TopWeather(title:"Dhaka, BD", imageName: isNight ? "moon.fill" : "cloud.sun.fill", temparature: isNight ? 20 : 32)
                
                HStack (spacing:20){
                    
                    WeatherCellView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temparature: 24)
                    WeatherCellView(dayOfWeek: "SUN", imageName: "sun.max.fill", temparature: 37)
                    WeatherCellView(dayOfWeek: "MON", imageName: "wind.snow", temparature: 25)
                    WeatherCellView(dayOfWeek: "TUE", imageName: "sun.max.fill", temparature: 51)
                    WeatherCellView(dayOfWeek: "WED", imageName: "sunset.fill", temparature: 18)
                    WeatherCellView(dayOfWeek: "THU", imageName: "snow", temparature: 10)
                }
                .padding(.bottom, 100)
                
                
                Button{
                    
                    isNight.toggle()
                    
                } label: {
                    WeacheButton(title: "Change Day Time")
                }
                
                Spacer()
                
            }
            
            
            
        }
    }
}

#Preview {
    WeatherView()
}

struct WeatherCellView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temparature: Int
    
    
    
    var body: some View {
        VStack {
            
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium, design: .rounded))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            
            Text("\(temparature)°")
                .font(.system(size: 16,weight: .medium, design: .rounded))
                .foregroundColor(.white )
        }
    }
}

struct BackgroundView: View {
    
   var isNight: Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue , isNight ? .gray : .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct TopWeather: View {
    
    
    var title:String
    var imageName: String
    var temparature: Int
    
    var body: some View {
        VStack (spacing: 8){
            
            Text(title)
                .font(.system(size: 32,weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 200)
            
            
            Text("\(temparature)°")
                .font(.system(size: 76,weight: .medium, design: .rounded))
                .foregroundColor(.white )
        }
        .padding(.bottom,40)
    }
}

