//
//  UserProfileView.swift
//  Mily
//
//  Created by Hilmy Noerfatih on 04/05/23.
//

import SwiftUI

struct TreeProfileView: View {
    @State private var name: String = ""
    @State private var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"]
    
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
                    
                    List {
                        ForEach(items, id: \.self) { item in
                            Button(action: {
                                // profile
                            }) {
                                HStack(){
                                    Image("tree")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .background()
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                        .scaledToFit()
                                        .frame(width: 50)
                                    Text(item)
                                        .foregroundColor(.black)
                                    Spacer()
                                }.padding(20)
                            }
                        }.onDelete(perform: delete)
                    }.scrollContentBackground(.hidden)
                        .cornerRadius(10)
                        .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                }
            }
            
        }
    }
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}


struct TreeProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TreeProfileView()
    }
}
