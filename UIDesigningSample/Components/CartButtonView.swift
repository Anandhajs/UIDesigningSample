//
//  CartButtonView.swift
//  UIDesigningSample
//
//  Created by Apple on 07/10/22.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack(spacing: 10.0) {

                Image(systemName: "cart").renderingMode(.template).foregroundColor(.black)
                    .padding(5)

                if numberOfProducts > 0 {
                    Text("\(numberOfProducts)")
                        .font(.caption2).bold()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .background(Color(.red))
                        .cornerRadius(50)
                }
            }
        }
    }
}

//struct CartButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartButtonView(numberOfProducts: 1)
//    }
//}
