//
//  InboxView.swift
//  airbnb-clone-b
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                            Image("venecia")
                                .resizable()
                                .frame(width: 400, height: 500)

                            VStack (alignment: .leading) {
                                HStack{
                                    Image(systemName: "chevron.left.circle.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "square.and.arrow.up.circle.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                    Image(systemName: "heart.circle.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)

                                }
                                .padding(.top, 60)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                              Spacer()
                                HStack{
                                    Image(systemName: "pause")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "speaker.slash.fill")
                                        .resizable()
                                        .frame(width: 10, height: 12)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                .padding()
                                .padding(.leading, 20)
                                
                                

                                }
                    }
            Spacer()
            VStack{
                VStack(alignment: .leading, spacing: 25) {
                                VStack(alignment: .leading) {
                                    VStack{
                                        Text("Venice Canal Tours")
                                            .fontWeight(.semibold)
                                            .font(.title)
                                        Spacer()
                                        HStack{
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 11, height: 11)
                                            Text("4.91")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                            + Text(" (116) • ")
                                                .font(.title3)
                                            + Text("Venice, Italy")
                                                .font(.title3)
                                                .underline()

                                        }
                                    }
                                    Divider()
                                    HStack {
                                                            VStack{
                                                                Text("Experience hosted")
                                                                    .fontWeight(.semibold)
                                                                    .font(.title)
                                                                Text("by SHAUN")
                                                                    .padding(.trailing, 100)
                                                                    .fontWeight(.semibold)
                                                                    .font(.title)
                                                            }
                                                            Spacer()
                                                            Image("Profile_image")
                                                                .resizable()
                                                                        .frame(width: 50, height: 50)
                                                                        .clipShape(Circle())
                                                        }
                                                        Text("6 guests • 3 bedrooms")
                                                            .font(.title3)
                                                    }
                                                    Divider()
                    HStack(alignment: .top){
                                        Image(systemName: "door.left.hand.open")
                                            .frame(width: 20, height: 20)
                                        VStack(alignment:.leading){
                                            Text("Cultural immersion")
                                                .font(.title3)
                                            Text("Guests felt absorbed in a community or culture")
                                                .foregroundStyle(.gray)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Image(systemName: "medal")
                                            .frame(width: 20, height: 20)
                                        VStack(alignment:.leading){
                                            Text("Super storytelling")
                                                .font(.title3)
                                            Text("Guests say this Host tells great stories")
                                                .foregroundStyle(.gray)
                                        }
                                    }
                                    Divider()
                    Text("What you'll do")
                                        .font(.title)
                                    Text("Cruising through the Venice's canals you will enjoy its unique atmosphere comfortably on board of a full electric boat. An extraordinary experience that will allow you to relax and immerse into the Venice most...")
                                        .font(.callout)
                                    + Text("read more")
                                        .font(.callout)
                                        .underline()
                                    HStack{
                                        Image("Venice3")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 188)
                                            .cornerRadius(20)
                                        VStack{
                                            Image("Venice1")
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(20)
                                            Image("Venice2")
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(20)

                                        }
                                    }
                                    HStack{
                                        Button{
                                        } label: {
                                            Text("Show all 8 photos")
                                                .padding(15)
                                                .foregroundStyle(.black)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 6).stroke(Color.black))
                                        }
                                        
                                        
                                    }
                                   

                                    .frame(maxWidth: .infinity)
                                    .padding()
                    
                                    
                                }
                
                .padding()
                
            }
            
                    
            }
        .ignoresSafeArea()
        }
    }
    
    
    
    
    
    
    struct InboxView_Previews: PreviewProvider {
        static var previews: some View {
            InboxView()
        }
    }

