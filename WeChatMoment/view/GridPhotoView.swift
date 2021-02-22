//
//  PhotoCellView.swift
//  WeChatMoment
//
//  Created by 牟滔 on 2021/2/5.
//  Copyright © 2021 牟滔. All rights reserved.
//

import SwiftUI
private let kImageSpace: CGFloat = 3
private let singlePhotoWidth = (width - CGFloat(kImageSpace*2))/3

struct GridPhotoView: View {
    let images: [Picture]
    var body: some View {
        Group {
            if images.count == 1 {
                loadImage(res: self.images[0].url)
                    .resizable()
                    .scaledToFill()
                    .frame(width: singlePhotoWidth*2, height: singlePhotoWidth*1.2)
                    .clipped()
            } else if images.count == 2 {
                HStack{
                    PostImageCellRow(images: images)
                    Spacer()
                }
            } else if images.count == 3 {
                PostImageCellRow(images: images)
            } else if images.count == 4 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    HStack{
                        PostImageCellRow(images: Array(images[0...1]))
                        Spacer()
                    }
                    HStack{
                        PostImageCellRow(images: Array(images[2...3]))
                        Spacer()
                    }
                }.frame(width: width)
            } else if images.count == 5 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    PostImageCellRow(images: Array(images[0...2]))
                    HStack{
                        PostImageCellRow(images: Array(images[3...4]))
                        Spacer()
                    }
                }.frame(width: width)
            } else if images.count == 6 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    PostImageCellRow(images: Array(images[0...2]))
                    PostImageCellRow(images: Array(images[3...5]))
                }
            }else if images.count == 7 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    PostImageCellRow(images: Array(images[0...2]))
                    PostImageCellRow(images: Array(images[3...5]))
                    HStack{
                        PostImageCellRow(images: Array(images[6...6]))
                        Spacer()
                        Spacer()
                    }
                }
            }else if images.count == 8 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    PostImageCellRow(images: Array(images[0...2]))
                    PostImageCellRow(images: Array(images[3...5]))
                    HStack{
                        PostImageCellRow(images: Array(images[6...7]))
                        Spacer()
                    }
                }.frame(width: width)
            }else if images.count == 9 {
                VStack(alignment: .leading, spacing: kImageSpace) {
                    PostImageCellRow(images: Array(images[0...2]))
                    PostImageCellRow(images: Array(images[3...5]))
                    PostImageCellRow(images: Array(images[6...8]))
                }.frame(width: width)
            }
        }
    }
}

struct PostImageCellRow: View {
    let images: [Picture]
    var body: some View {
        HStack(spacing: kImageSpace) {
            ForEach(images,id: \.id){ image in
                loadImage(res: image.url)
                    .resizable()
                    .scaledToFill()
                    .frame(width: singlePhotoWidth,height:singlePhotoWidth)
                    .clipped()
            }
        }
    }
}
struct PhotoCellView_Previews: PreviewProvider {
    static var previews: some View {
        let list = listData[0].images
        let width = UIScreen.main.bounds.width-75
        return Group {
            GridPhotoView(images: Array(list[0...0]))
            GridPhotoView(images: Array(list[0...1]))
            GridPhotoView(images: Array(list[0...2]))
            GridPhotoView(images: Array(list[0...3]))
            GridPhotoView(images: Array(list[0...4]))
            GridPhotoView(images: Array(list[0...5]))
            GridPhotoView(images: Array(list[0...6]))
            GridPhotoView(images: Array(list[0...7]))
            GridPhotoView(images: Array(list[0...8]))
        }
        .previewLayout(.fixed(width: width, height: 300))
    }
}
