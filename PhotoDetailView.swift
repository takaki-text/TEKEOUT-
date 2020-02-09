//
//  PhotoDetailView.swift
//  uuuuuu
//
//  Created by 永石天希 on 2020/01/15.
//  Copyright © 2020 永石天希. All rights reserved.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    var body: some View {
        
             VStack{
                       MapView()
                        .edgesIgnoringSafeArea(.top)             .frame(height: 300)
                        
                
                VStack{
                Image(photo.imageName)
                            
                
            .clipShape(Circle())
            .overlay(
            Circle().stroke(Color.blue, lineWidth: 1))
                .shadow(radius: 10)
                    .frame(height: 120.0)
                    .offset(y: -130)
                .padding(.bottom, -10)
                    VStack {
                        Text(photo.title)
                        Text("\(photo.tanka)円")                    }
                        
                        
            
                .border(Color.black,width: 1)
                .font(.system(size: 39))
                    .offset(y: -150)
                        
                                    }
                
                    .frame(height: 1.0)
                
                NavigationView {
                                              NavigationLink(destination: order()) {
                                              
                                               VStack{ Text("takeout")
                                                   .font(.system(size: 100))
                                                       .foregroundColor(Color.black)
                                               
                                               Text("注文ページへ")
                                               .font(.title)
                                               .foregroundColor(.black)
                                               }
                                               .frame(height: nil)
                                               .navigationBarTitle(Text("戻る"))
                                       
                                              
                                              }
                                              .frame(height: nil)
                                              
                                                
                
                
                
                
            
                
                }.frame(height: 270.0)
                    .position(x: 180,y: 100)
    .padding()

    //戻りボタン
            .navigationBarTitle(Text(verbatim: photo.title), displayMode: .inline)
    
}
    }

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: PhotoArray[0])
    }
}
}

