//
//  ContentView.swift
//  who am I ?
//
//  Created by GuneetSingh Lamba on 2020-02-03.
//  Copyright © 2020 GuneetSingh Lamba. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var nextPage:Bool = false

    var body: some View {
        NavigationView {
        VStack{
        Text("Hi, there!")
            .font(.title)
            .foregroundColor(Color.blue)
            .padding()
            .offset(x: 0, y: -50)
            HStack
            {
                Image("ted")
            }.offset(x: 0, y: 0)
        
            
          

                HStack {
                           NavigationLink(destination: homePage()) {
                            Image("cross")
                                .renderingMode(.original)
            .clipShape(Circle()).shadow(color: Color.gray, radius: 6.0, x: -3.0, y: -5.0)
                            .offset(x: -50, y: 0)
                          }.navigationBarHidden(true)
                          .navigationBarBackButtonHidden(true)
                             
                           
                    NavigationLink(destination: homePage()) {
                         
                             Image("heart")
                             .renderingMode(.original)
                             .rotationEffect(.degrees(360))
                             .clipShape(Circle())
                             .shadow(color: Color.gray, radius: 6.0, x: -3.0, y: -5.0)
                         .offset(x: 50, y: 0)
                    }.navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                    
                    }.offset(x: 0, y: 30)
            }
        }.offset(x: 0, y: -70)
        .edgesIgnoringSafeArea(.all)
        
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
