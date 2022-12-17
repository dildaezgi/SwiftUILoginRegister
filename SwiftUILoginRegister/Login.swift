//
//  Login.swift
//  SwiftUILoginRegister
//
//  Created by Dilda Ezgi Metincan on 17.12.2022.
//

import SwiftUI

struct Login: View {
    @State var password = ""
    var social = ["google", "facebook"]
    var body: some View {
        VStack {
            
            HStack{
                VStack(alignment: .leading, spacing: 12) {
                    Text("Tekrar Merhaba").fontWeight(.bold)
                    Text("Dilda").font(.title).fontWeight(.bold)
                    
                    Button(action: {}) {
                        Text("Bu ben degilim.")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("blue"))
                    }
                } //VStack bitisi
                Spacer(minLength: 0) //vstack icindekileri sola yasladi
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
            } //HStack bitisi
            .padding(.horizontal, 25) //hstack icindekileri sagdan soldan 25 paddingledi
            .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Parola")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("Parola", text: $password).padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                Button(action: {}) {
                    Text("Parolami Unuttum").font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("blue"))
                }.padding(.top, 10) //butona bosluk
            } //vstack parola alani bitisi
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //oturum acma butonu
            Button(action: {}) {
                Text("Oturum Ac").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50) //ekran genisligi -50
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("mainAppColor"), Color("secondAppColor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    ).cornerRadius(10)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            //sosyal medya butonlari
            Button(action: {}) {
                HStack(spacing: 35) {
                    Image(systemName: "faceid").font(.system(size: 20))
                    Text("Face ID ile oturum ac").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("blue"))
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

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
