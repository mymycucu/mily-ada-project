//
//  UserProfileView.swift
//  Mily
//
//  Created by Hilmy Noerfatih on 04/05/23.
//

import SwiftUI

struct UserProfileView: View {
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView()
                VStack{
                    HStack(alignment: .top){
                        Button (action: {
                            // back function
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color.black)
                        }.frame(width: 70, alignment: .leading)
                        Spacer()
                        Image("tree")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .background(Color.white)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 1))
                            .scaledToFit()
                            .frame(width: 200)
                        Spacer()
                        
                        Button (action: {
                            // edit function
                        }) {
                            Text("Edit")
                        }.buttonStyle(.borderedProminent).frame(width: 70, alignment: .trailing)
                    }.padding(20)
                    Text("Theo Raditya")
                        .font(.system(size: 32))
                        .bold()
                        .overlay(
                            VStack{
                                Divider().frame(height: 2)
                                    .background(Color.gray)
                                    .offset(x: 0, y: 25)
                            }
                        )
                    TextField("Enter text here", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(20)
                    VStack{
                        HStack{
                            Text("Date of Birth")
                                .bold()
                            Text("24-12-02")
                        }
                        HStack{
                            Text("Phone number")
                                .bold()
                            Text("0987654321")
                        }
                        HStack{
                            Text("Profession")
                                .bold()
                            Text("Coder")
                        }
                    }.padding(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .circular).stroke(Color(uiColor: .tertiaryLabel), lineWidth: 1))
                    .background()
                    .cornerRadius(20)
                    .shadow(color: Color.gray, radius: 2, x: 0, y: 2)
                    Spacer()
                }
            }
            
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(NavigationBarColor)
                    .cornerRadius(10)
                    .frame(height: 200)
                Image("tree")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .offset(x: -30, y: 100)
                    .clipped()
                
            }.ignoresSafeArea()
            Spacer()
        }
    }
}


struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
