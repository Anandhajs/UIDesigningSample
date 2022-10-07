//
//  ContentView.swift
//  UIDesigningSample
//
//  Created by Apple on 06/10/22.
//

import SwiftUI

struct ToolbarView: View {

    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Text("Seasions").font(.title2)
                    HStack(spacing: 10.0) {
                        Button(action: {

                        }) {
                            Image(systemName: "line.horizontal.3").renderingMode(.template).foregroundColor(.black)
                        }
                        Spacer()
                        Button(action: {

                        }) {
                            Image(systemName: "magnifyingglass").renderingMode(.template).foregroundColor(.black)
                        }
                        Button(action: {

                        }) {
                            Image(systemName: "bag").renderingMode(.template).foregroundColor(.black)
                        }
                        Button(action: {

                        }) {
                            CartButtonView(numberOfProducts: 1)
                        }
                    }

                }.background(Color(.white))
                    .padding([.leading, .trailing, .top], 10)
                MainView()
            }
        }

    }
}


struct MainView: View {

    var body: some View {
        VStack(spacing: 10.0) {
            HStack {
                Button(action: {

                }) {
                    HStack {
                        Text("Casual Dress")
                        Spacer()
                        Image(systemName: "chevron.down")
                    }.padding()
                }.foregroundColor(.black)
                    .background(Color(.white))

                Button(action: {

                }) {
                    Image(systemName: "slider.vertical.3").renderingMode(.original).padding()
                        .foregroundColor(.black)
                        .background(Color(.white))
                }
            }

            ContentView()

        }.padding([.top, .leading, .bottom], 2)
            .background(Color(.systemGray6))
    }
}

//struct ToolbarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToolbarView()
//    }
//}
