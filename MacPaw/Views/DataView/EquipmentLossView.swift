//
//  EquipmentLossView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import SwiftUI

struct EquipmentLossView: View {
    let title: String?
    let value: String?
    //let equipment: Equipment?
   // let oryxData: [RussiaLossesEquipmentOryx]?


    var body: some View {
            VStack {
                Image(title ?? "")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 8)
                
                Text(title ?? "")
                    .foregroundColor(Color("customGray"))
                    .font(.custom("e-UkraineHead-LOGO", size: 11))
                    .fontWeight(.bold)
                
                Text(value ?? "")
                    .font(.custom("e-UkraineHead-LOGO", size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(Color("customRed"))
                
//                if let description = getDescription(for: equipment?.equipment_ua ?? "") {
//                    Text("Equipment Description: \(description)")
//                }
            }
            .padding(.horizontal, 30)
            .background(MaterialView(.systemUltraThinMaterialDark))
            .cornerRadius(14)
            .frame(maxWidth: 250, maxHeight: 150)
        
    }
    
    // Function to get equipment description based on the equipment name
//    private func getDescription(for equipmentName: String) -> String? {
//        return oryxData?.first(where: { $0.equipment_oryx == equipmentName })?.equipment_oryx
//    }
}





//struct EquipmentLossView_Previews: PreviewProvider {
//    static var previews: some View {
//        EquipmentLossView(title: "N/A", value: "0")
//            .previewLayout(.sizeThatFits)
//    }
//}
