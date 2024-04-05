//
//  ContentView.swift
//  SuperMan
//
//  Created by  Ixart on 06/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var location: CGPoint = CGPoint(x: 200, y: 400)
//    @State private var fingerLocation: CGPoint? // indice visuel avec un cercle vert quand jappuie

        
    var simpleDrag: some Gesture {
            DragGesture()
                .onChanged { value in
                    self.location = value.location
                } // fin changed
        } // fin du geste
    
    
//    var fingerDrag: some Gesture { // 2
//             DragGesture()
//                .onChanged { value in
//                    self.fingerLocation = value.location
//                }
//                .onEnded { value in
//                    self.fingerLocation = nil
//                }
//        }

    var body: some View {
        ZStack {
            Color(.black)
            VStack {

                Image("s")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .position(location) // ou c'est
                    .gesture(simpleDrag) // pour le deplacement
                
                
                
                
//                    .gesture(simpleDrag.simultaneously(with: fingerDrag))
//                                if let fingerLocation = fingerLocation {
//                                    Circle()
//                                        .stroke(Color.green, lineWidth: 10)
//                                        .frame(width: 100, height: 100)
//                                        .position(fingerLocation)
//                                        .padding(.top,-430)
//                                }
                            
   
            }// fin vstack
        } // fin Zstack
        .ignoresSafeArea()
        
        
        
        
        
        
    } // fin body
} // fin struct

#Preview {
    ContentView()
}
