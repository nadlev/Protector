//
//  EquipmentDetail.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

//import SwiftUI
//
//
//struct EquipmentDetail: View {
//    @State private var equipment: Equipment?
//    @State private var oryxData: [RussiaLossesEquipmentOryx]?
//
////        init(equipment: Equipment, oryxData: [RussiaLossesEquipmentOryx]) {
////            _equipment = State(initialValue: equipment)
////            _oryxData = State(initialValue: oryxData)
////        }
//
//    var body: some View {
//        VStack {
//            // Find the corresponding equipment in oryxData using equipment_ua
//            if let oryxEntry = oryxData?.first(where: { $0.equipment_ua == equipment?.equipment_ua }) {
//                Text("Equipment Type: \(oryxEntry.equipment_ua)")
//                Text("Model: \(oryxEntry.model)")
//                Text("Manufacturer: \(oryxEntry.manufacturer)")
//                Text("Losses Total: \(oryxEntry.losses_total)")
//                Text("Equipment Description: \(oryxEntry.equipment_oryx)")
//            }
//        }
//        .padding()
//        .navigationBarTitle(Text(equipment?.equipment_ua ?? ""), displayMode: .inline)
//    }
//}
//
