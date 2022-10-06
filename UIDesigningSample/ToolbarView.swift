//
//  ContentView.swift
//  UIDesigningSample
//
//  Created by Apple on 06/10/22.
//

import SwiftUI

struct ToolbarView: View {

    var body: some View {
        VStack(spacing: 15.0) {
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
                        Image(systemName: "bell").renderingMode(.template).foregroundColor(.black)

                    }
                }

            }.background(Color(.white))
                .padding([.leading, .trailing, .top], 10)
            MainView()
        }
    }

}


struct MainView: View {

    var body: some View {
        VStack(spacing: 15.0) {
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

        DetailsScrollView()

        }.padding()
        .background(Color(.systemGray6))
    }


}


struct DetailsScrollView: View{
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {

            VStack(spacing: 12.0) {
                ForEach(datas) { i in
                    HStack {

                        ForEach(i.row) { j in
                            VStack(spacing: 8.0) {
                                Image(j.image).resizable().frame(width: UIScreen.main.bounds.size.width / 2 - 20, height: 240).cornerRadius(10.0)
                                HStack {
                                    VStack(alignment: .leading, spacing: 10.0) {
                                        Text(j.name)
                                        Text(j.price).fontWeight(.heavy)
                                    }
                                    Spacer()
                                    Button(action: {

                                    }) {
                                        Image("option-1").renderingMode(.original)

                                    }

                                }.padding(.trailing, 10.0)
                            }
                        }
                    }
                }
            }
        }
    }


    struct type: Identifiable {
        var id: Int
        var row: [row]
    }

    struct row: Identifiable {

        var id: Int
        var name: String
        var image: String
        var price: String
    }
    var sizes = ["S", "M", "L", "XL"]
    var types = ["Dress", "pants", "T-shirts"]

    var datas = [ type(id: 0,
                row: [row(id: 1, name: "fancy dress", image: "dress-4", price: "Rs.500")]),
                    type(id: 2,
                row: [row(id: 0, name: "top", image: "dress-2", price: "Rs. 600")]),
                    type(id: 3,
                row: [row(id: 0, name: "kids dress", image: "dress-3", price: "Rs. 900")]),
                    type(id: 4,
                row: [row(id: 0, name: "mens wear", image: "dress-4", price: "Rs. 800")])
            ]
}
