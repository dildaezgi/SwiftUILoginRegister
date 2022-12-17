//
//  Home.swift
//  SwiftUILoginRegister
//
//  Created by Dilda Ezgi Metincan on 17.12.2022.
//

import SwiftUI

struct Home: View {
    @State var index = 0 //eger 0sa giris yap 1se kayit ol
    @Namespace var name
    
    var body: some View {
        VStack{
            Image("flo").resizable().aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
            
            HStack(spacing: 0) {
                
                Button(action: {
                    withAnimation(.spring()) {
                        index = 0
                    }
                }) {
                    VStack {
                        Text("Giriş Yap").font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        ZStack{
                            Capsule().fill(Color.black.opacity(0.04))
                                .frame(height: 5)
                            if index == 0 { //eger giris yap alani secildiyse renkli cizgi
                                Capsule().fill(Color("mainAppColor"))
                                    .frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                                
                            }
                        }
                    }
                }
                
                Button(action: {
                    withAnimation(.spring()) {
                        index = 1
                    }
                }) {
                    VStack {
                        Text("Kayıt Ol").font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        ZStack{
                            Capsule().fill(Color.black.opacity(0.04))
                                .frame(height: 5)
                            if index == 1 { //eger giris yap alani secildiyse renkli cizgi
                                Capsule().fill(Color("mainAppColor"))
                                    .frame(height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                                
                            }
                        }
                    }
                }
            }.padding(.top, 30)
            
            if index == 0 {
                Login()
            } else {
                Register()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
