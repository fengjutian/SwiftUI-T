//
//  Text.swift
//  SwiftUI-T
//
//  Created by fengjutian on 2020/6/11.
//  Copyright © 2020 fengjutian. All rights reserved.
//

import SwiftUI

let githubURL = "https://github.com/fengjutian/SwiftUI-T"

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
            
            Text(githubURL)
                .underline(true, color: Color.gray)
                .font(.system(size: 16, design: .serif))
//                .tapAction {
//                    print(githubURL)
//                }
            
            HStack {
                Text("text")
                Text("text").bold()
                
            }
        }
        
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
