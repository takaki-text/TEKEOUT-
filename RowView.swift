//
//  RowView.swift
//  uuuuuu
//
//  Created by 永石天希 on 2020/01/14.
//  Copyright © 2020 永石天希. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var photo:PhotoData
    
    var body: some View {
        HStack{
            Image(photo.imageName)
            .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
            Spacer()
        }
       
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo:PhotoArray[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
