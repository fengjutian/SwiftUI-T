//
//  TextField.swift
//  SwiftUI-T
//
//  Created by fengjutian on 2020/6/12.
//  Copyright © 2020 fengjutian. All rights reserved.
//

import SwiftUI


import UIKit

struct MainApp {
    /// keyWindow
    // 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes
    //  https://stackoverflow.com/questions/57134259/how-to-resolve-keywindow-was-deprecated-in-ios-13-0
    public static var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first ?? nil
    }
}



struct TextField : View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    let nameText = Text("请填入昵称").foregroundColor(.secondary).font(.system(size: 16))
    let pwdText = Text("请填入密码").foregroundColor(.secondary).font(.system(size: 16))
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("昵称：")
                    .foregroundColor(.secondary)
                
//                TextField("", text: $name, onEditingChanged: { (changed) in
//                    print("onEditing: \(changed)")
//                }, onCommit: {
//                    print("userName: \(self.name)")
//                    self.endEditing(true)
//                })
            }.padding(10).frame(height: 50).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack {
                Text("密码：").foregroundColor(.secondary)
                SecureField("", text: $password) {
                    print("Password: \(self.password)")
                    self.endEditing(true)
                }
            }.padding(10)
                .frame(height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }.offset(y: -150).navigationBarTitle(Text("TextField"))
    }
    
    
    private func endEditing(_ force: Bool) {
        //        UIApplication.shared.keyWindow?.endEditing(force)
        MainApp.keyWindow?.endEditing(force)
    }
}

#if DEBUG
struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextField()
    }
}
#endif
