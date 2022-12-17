//
//  Register.swift
//  SwiftUILoginRegister
//
//  Created by Dilda Ezgi Metincan on 17.12.2022.
//

import SwiftUI

struct Register: View {
    @State var userName = ""
    @State var password = ""
    var social = ["google", "facebook"]
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Hesap Oluştur").font(.title).fontWeight(.bold)
                Spacer()
            }.padding(.horizontal, 25)
            .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Kullanıcı Adı").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Email Adresi", text: $userName).padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Parola").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Parolanız", text: $userName).padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
            }.padding(.horizontal, 25)
            .padding(.top, 25)
            
            //kayit olma butonu
            
            Button(action: {}) {
                Text("Kayıt Ol").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50) //ekran genisligi -50
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("mainAppColor"), Color("secondAppColor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    ).cornerRadius(10)
            }.padding(.horizontal, 25)
            .padding(.top, 25)
            
            Button(action: {}) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid").font(.system(size: 20))
                    Text("Face ID ile oturum aç").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("blue"))
                    Spacer() //sola goturdu
                }.padding() //butona padding yapti
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color("blue"), lineWidth: 1))
            }.padding(.top, 35)
            .padding(.horizontal, 25)
            
            HStack(spacing: 30) {
                ForEach(social, id: \.self) { name in
                    Button(action: {}) {
                        Image(name).renderingMode(.original)
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
            }.padding(.top, 25)
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
