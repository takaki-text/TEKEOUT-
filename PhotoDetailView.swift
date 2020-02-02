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
            Image(photo.imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
            Spacer()
    }
.padding()
    //戻りボタン
            .navigationBarTitle(Text(verbatim: photo.title), displayMode: .inline)
    
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: PhotoArray[0])
    }
}
}
