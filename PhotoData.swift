//
//  PhotoData.swift
//  uuuuuu
//
//  Created by 永石天希 on 2020/01/14.
//  Copyright © 2020 永石天希. All rights reserved.
//

import Foundation
//写真データを配列にいれる。
var PhotoArray:[PhotoData] = makeData()
//構造体photoDataの定義
struct PhotoData: Identifiable{
    var id: Int
    var imageName: String
    var title: String
    var tanka: Int}
//構造体のPhotoData（）で写真データを作って配列する
func makeData()->[PhotoData]{
    var dataArray: [PhotoData] = []
    dataArray.append(PhotoData(id:1, imageName: "hot", title: "ホットケーキ", tanka:500))
    dataArray.append(PhotoData(id:2, imageName: "ramen", title: "ラーメン" , tanka:700))
    dataArray.append(PhotoData(id:3, imageName: "syouga", title: "生姜焼き", tanka:700))
    dataArray.append(PhotoData(id:4, imageName: "udon", title: "うどん", tanka:400))
    
    return dataArray
}
