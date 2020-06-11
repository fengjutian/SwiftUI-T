//
//  Text.swift
//  SwiftUI-T
//
//  Created by fengjutian on 2020/6/11.
//  Copyright © 2020 fengjutian. All rights reserved.
//

import SwiftUI

struct TextPage: View {
    
    var body: some View {
        VStack(spacing: 15) {
            Text("SwiftUI")
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
        }
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
