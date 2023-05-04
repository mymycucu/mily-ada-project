//
//  TreeCanvasView.swift
//  mily
//
//  Created by Hilmy Noerfatih on 04/05/23.
//

import SwiftUI

struct TreeCanvasView: View {
    var body: some View {
        ZStack{
            //canvas
            
            VStack{
                HStack{
                    Button (action: {
                        // back function
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    Button (action: {
                        // profile
                    }) {
                        Text("Nama keluarga saya..")
                    }.buttonStyle(.borderedProminent)
                }.padding(20)
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Button (action: {
                            // back function
                        }) {
                            Image(systemName: "square.and.arrow.up")
                        }.buttonStyle(.borderedProminent)
                        Button (action: {
                            // edit function
                        }) {
                            Image(systemName: "photo" )
                        }.buttonStyle(.borderedProminent)
                    }.padding(20)
                }
            }
        }
    }
}

struct TreeCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        TreeCanvasView()
    }
}
