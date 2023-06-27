//
//  ContentView.swift
//  About Me App (day 4)
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "I'm a rasing sophomore at Timberline High School. I speak Vietnamese and English at home. I have lived in Idaho my whole life"
    var body: some View {
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("beachpic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                HStack(spacing: 20.0){
                    Text("Sandy Dang")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Button("Fun Fact") {
                    textTitle = " I like to go to the beach"
                        //this is a comment
                                        }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.597, saturation: 0.588, brightness: 0.694))
                    
                }
                Text(textTitle)

                
            }
            
            .padding()
            .background(Rectangle().foregroundColor(Color.white))
            .cornerRadius(15)
            .shadow(radius : 15)
            .padding()
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
