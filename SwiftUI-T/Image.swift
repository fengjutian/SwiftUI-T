//
//  Image.swift
//  SwiftUI-T
//
//  Created by fengjutian on 2020/6/13.
//  Copyright © 2020 fengjutian. All rights reserved.
//

import SwiftUI

struct Image: View {
    let range = 1..<5
    
//    let icon  = "http://a2.att.hudong.com/36/48/19300001357258133412489354717.jpg"
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .center)
                    .onTapGesture {
                        print("Tap \(index)")
                }
            }
        }.navigationBarTitle(Text("Image"))
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        Image()
    }
}
