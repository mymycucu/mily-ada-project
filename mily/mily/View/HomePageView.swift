//
//  HomePageView.swift
//  Mily
//
//  Created by Hilmy Noerfatih on 04/05/23.
//

import SwiftUI

struct HomePageView: View {
    @State private var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    let myColor = UIColor(red: 203/255, green: 243/255, blue: 240/255, alpha: 1.0)
    
    func removeRows(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(myColor))
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
                VStack{
                    HStack(){
                        Text("Your Mily Tree")
                            .bold()
                        Spacer()
                        Button{
                            // plus
                        }label: {
                            Image(systemName: "plus")
                                .foregroundStyle(Color.black)
                        }
                    }.padding(20)
                    
                    List {
                        ForEach(items, id: \.self) { item in
                            ExtractedView(name: item)
                        }
                        .onDelete(perform: removeRows)
                    }
                    .listStyle(.plain)
                    
//                    ScrollView{
//                        VStack(alignment: .leading, spacing: 0) {
//                            ForEach(items, id: \.self) { item in
//                                ExtractedView(name: item)
//                                Divider()
//                            }
//                            .onDelete(perform: removeRows)
//                        }
//                    }.background(Color.white)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color(uiColor: .tertiaryLabel), lineWidth: 1))
//                    .cornerRadius(10)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color(uiColor: .tertiaryLabel), lineWidth: 1))
                .background(Color.orange)
                .cornerRadius(10)
                .shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                .padding(20)
                
                
            }.toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                        // link to notification
                    }label: {
                        Image(systemName: "bell.badge.fill")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.red, Color.black)
                    }
                    Button(action: {
                        // link to profile page
                    }) {
                        Label("profile", systemImage: "person.fill")
                    }.foregroundColor(Color.black)
                }
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

struct ExtractedView: View {
    var name : String
    
    var body: some View {
        Button(action: {
            // link to profile page
        }) {
            HStack(){
                Image("tree")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    .scaledToFit()
                    .frame(width: 50)
                Text(name)
                    .foregroundColor(.black)
                Spacer()
            }.padding(20)
        }
    }
}
