//
//  DetailsView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import SwiftUI

import SwiftUI

struct DetailsView: View {
    
    let losses: LossesData?
    
    var body: some View {
        ZStack (alignment: .top) {
            Image("BackgroundImage")
                .resizable()
                .ignoresSafeArea(.all)
            ScrollView {
                VStack {
                    VStack {
                        VStack (alignment: .center) {
                            Text(String(losses!.day))
                                .foregroundColor(.white)
                                .font(.custom("e-UkraineHead-LOGO", size: 70))
                                .fontWeight(.bold)
                            Text(K.txt.dayOfWar)
                                .foregroundColor(.white)
                                .font(.custom("e-UkraineHead-LOGO", size: 35))
                                .fontWeight(.bold)
                            HStack(alignment: .center) {
                                VStack(alignment: .leading) {
                                    Text(K.txt.enemyLossesOn)
                                        .foregroundColor(Color("customGray"))
                                        .font(.custom("e-UkraineHead-LOGO", size: 20))
                                    Text(losses!.date)
                                        .fontWeight(.semibold)
                                        .font(.custom("e-UkraineHead-LOGO", size: 18))
                                        .foregroundColor(Color("customGray"))
                                }
                                Spacer()
                                VStack (alignment: .trailing) {
                                    Text(losses!.personnelAmount)
                                        .foregroundColor(Color("customRed"))
                                        .font(.custom("e-UkraineHead-LOGO", size: 30))
                                        .fontWeight(.bold)
                                    Text(K.txt.personnel)
                                        .font(.custom("e-UkraineHead-LOGO", size: 10))
                                        .foregroundColor(Color("customGray"))
                                }
                            }
                            .padding([.horizontal])
                            Divider()
                                .background(.white)
                            VStack {
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                                    ForEach(losses!.lossesStats, id: \.self) { obj in
                                        EquipmentLossView(title: obj?.title, value: obj?.value)
                                    }
                                    .frame(width: 150, height: 150)
                                }
                                if let safeLossesDirection = losses!.greatestLossesDirection {
                                    HStack {
                                        Text(K.txt.greatestLossesDirection)
                                            .font(.custom("e-UkraineHead-LOGO", size: 13))
                                            .foregroundColor(Color("customGray"))
                                            .frame(alignment: .leading)
                                        Text(safeLossesDirection)
                                            .font(.custom("e-UkraineHead-LOGO", size: 13))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(alignment: .trailing)
                                        Spacer()
                                    }
                                    .padding([.vertical], 2)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(MaterialView(.systemUltraThinMaterialDark))
                        .cornerRadius(14)
                    }
                    .padding()
                }
            }
        }
        .navigationTitle(K.title)
    }
}
//
//struct EquipmentLossView_Previews: PreviewProvider {
//    static var previews: some View {
//        let equipment = Equipment(date: "2023-05-26", aircraft: 310, helicopter: 296, tank: 3796, armoredPersonnelCarrier: 7435, fieldArtillery: 3384, multipleRocketLauncher: 570, militaryAuto: nil, fuelTank: nil, drone: 2910, navalShip: 18, antiAircraftWarfare: 328, specialEquipment: 446, mobileSRBMSystem: nil, vehiclesAndFuelTanks: 6161, cruiseMissiles: 1015, greatestLossesDirection: nil)
//
//        let oryxData = [
//            RussiaLossesEquipmentOryx(equipment_oryx: "Tanks", model: "T-62 Obr. 1967", manufacturer: "the Soviet Union", losses_total: 1, equipment_ua: "Tanks"),
//            // Add more oryx data as needed
//        ]
//
//        return EquipmentLossView(title: "Tanks", value: "3796", equipment: equipment, oryxData: oryxData)
//    }
//}
