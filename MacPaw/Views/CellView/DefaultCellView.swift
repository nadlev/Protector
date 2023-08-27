//
//  DefaultCellView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import SwiftUI

struct DefaultCellView: View {
    
    let day: Int?
    let personnelAmount: String?
    
    var body: some View {
        HStack {
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(String(day!))
                            .font(.custom("e-UkraineHead-LOGO", size: 39))
                            .fontWeight(.bold)
                            .foregroundColor(Color("customGray"))
                        Text(K.txt.dayOfWar)
                            .foregroundColor(.white)
                            .font(.custom("e-UkraineHead-LOGO", size: 19))
                            .fontWeight(.bold)
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text(personnelAmount!)
                            .foregroundColor(Color("customRed"))
                            .font(.custom("e-UkraineHead-LOGO", size: 34))
                            .fontWeight(.bold)
                        Text(K.txt.personnel)
                            .font(.custom("e-UkraineHead-LOGO", size: 16))
                            .foregroundColor(Color("customGray"))
                    }
                }
            }
            .padding()
        }
        .background(MaterialView(.systemUltraThinMaterialDark))
        .cornerRadius(14)
    }
}

struct DefaultCellView_Previews: PreviewProvider {
    static var previews: some View {
        
        DefaultCellView(day: 0, personnelAmount: "0")
            .previewLayout(.sizeThatFits)
    }
}
