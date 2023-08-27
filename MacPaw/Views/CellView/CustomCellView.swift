//
//  CustomCellView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import SwiftUI

struct CustomCellView: View {
    
    let day: Int?
    let date: String?
    let personnelAmount: String?
    let aircrafts: Int?
    let helicopters: Int?
    
    var body: some View {
        HStack {
            VStack (alignment: .center) {
                Text(String(day!))
                    .foregroundColor(Color("customRed"))
                    .font(.custom("e-UkraineHead-LOGO", size: 100))
                    .fontWeight(.bold)
                Text(K.txt.dayOfWar)
                    .foregroundColor(.white)
                    .font(.custom("e-UkraineHead-LOGO", size: 32))
                    .fontWeight(.bold)
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(K.txt.enemyLossesOn)
                            .font(.custom("e-UkraineHead-LOGO", size: 15))
                            .foregroundColor(Color("customGray"))
                        Text(date!)
                            .font(.custom("e-UkraineHead-LOGO", size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("customGray"))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text(personnelAmount!)
                            .foregroundColor(Color("customRed"))
                            .font(.custom("e-UkraineHead-LOGO", size: 32))
                            .fontWeight(.bold)
                        Text(K.txt.personnel)
                            .font(.custom("e-UkraineHead-LOGO", size: 15))
                            .foregroundColor(Color("customGray"))
                    }
                }
                Divider()
                    .background(.white)

            }
            .padding()
        }
        .background(MaterialView(.systemUltraThinMaterialDark))
        .cornerRadius(14)
    }
}

struct CustomCellView_Previews: PreviewProvider {
    static var previews: some View {
        
        CustomCellView(day: 0, date: "00.00.0000", personnelAmount: "0", aircrafts: 0, helicopters: 0)
            .previewLayout(.sizeThatFits)
    }
}
