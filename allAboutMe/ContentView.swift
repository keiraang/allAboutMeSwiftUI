//
//  ContentView.swift
//  allAboutMe
//
//  Created by Keira Ang on 6/23/23.
//

import SwiftUI

struct CustomColor {
    static let russianviolet = Color("russianviolet")
    static let honeydew = Color("honeydew")
    static let mint = Color("mint")
    static let darkviolet = Color("darkviolet")
    // Add more here...
}

struct ContentView: View {
    @State private var clickypoints = 0
    @State private var texttitle = ""
    @State private var bodytext = "Hi, I'm Keira! Click the following button to learn more about me!"
    @State private var bgcolor = "russianviolet"
    @State private var boxcolor = "mint"
    @State private var textcolor = "honeydew"
    @State private var imgsize = 325.0
    var body: some View {
        ZStack {
            Color(bgcolor)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                
                
                
                Rectangle()
                    .fill(Color(boxcolor))
                    .frame(width: 375)
                    .zIndex(1)
                    .cornerRadius(30)
                
                
                
                VStack{
                    
                    
                    VStack {
                        
                        Image("me")
                            .resizable()
                            .frame(width: imgsize, height: imgsize)
                            .cornerRadius(20)
                            .padding()
                        
                        Text("\(texttitle)")
                            .font(.title)
                            .foregroundColor(Color(textcolor))
                            .frame(width: 350)
                        
                        Text("\(bodytext)")
                            .font(.title2)
                            .foregroundColor(Color(textcolor))
                            .padding()
                            .frame(width:350)
                        
                        
                    }
                    Button("Click Here!") {
                        // add a variable that checks modulus  (sees if it's an even number). the variable determines which page to show. if [varibable] is even, text variables are this, this, and this. every text needs to have a text variable. image should be replaced, and the size should be edited via variables.
                        clickypoints += 1
                        if clickypoints % 2 == 1 {
                            texttitle = "This is Keira Ang!"
                            bodytext = "I love 80's to 2000's music, comic movies and TV shows like Marvel and DC, watching cartoons, singing, and drawing! Click the button to return!"
                            bgcolor = "mint"
                            boxcolor = "russianviolet"
                            textcolor = "honeydew"
                            imgsize = 100.0
                        } else if clickypoints % 2 == 0 {
                            texttitle = ""
                            bgcolor = "russianviolet"
                            boxcolor = "mint"
                            textcolor = "honeydew"
                            imgsize = 325.0
                            bodytext = "Hi, I'm Keira! Click the following button to learn more about me!"
                        }
                                
                    }
                    .font(.title2)
                    .foregroundColor(Color("honeydew"))
                    .bold()
                    .buttonStyle(.borderedProminent)
                    .tint(Color("darkviolet"))
                    .padding()
                }
                .padding(.horizontal)
                .zIndex(2)
            }
        }
    }
}

// this is a change

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
