//
//  ContentView.swift
//  MacPaw
//
//  Created by 99999999 on 27.08.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datasetManager = DatasetManager()
    @State private var searchText = ""

    
    var searchResult: [LossesData] {
        if searchText.isEmpty {
            return datasetManager.lossesDataList.reversed()
        }
        else {
            return datasetManager.lossesDataList.filter { String($0.day).contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(searchResult, id: \.self) {
                        dataLosses in
                        ZStack {
                            if dataLosses == searchResult.first! {
                                CustomCellView(day: dataLosses.day, date: dataLosses.date, personnelAmount: dataLosses.personnelAmount, aircrafts: dataLosses.aircraft, helicopters: dataLosses.helicopter)
                            } else {
                                DefaultCellView(day: dataLosses.day, personnelAmount: dataLosses.personnelAmount)
                            }
                            NavigationLink (destination: DetailsView(losses: dataLosses)) {}
                                .frame(maxHeight: .infinity)
                                .opacity(0)
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                    Section {
                        HStack {
                            Spacer()
                            Text(K.txt.moreAbout)
                                .font(.custom("e-UkraineHead-LOGO", size: 12))
                                .foregroundColor(Color("customDarkGray"))
                            Link(destination: URL(string: "https://www.mil.gov.ua/")!) {
                                Text(K.txt.milDefUA)
                                    .font(.custom("e-UkraineHead-LOGO", size: 13))
                                    .foregroundColor(Color("customLightGray"))
                                    .underline()
                            }
                            Spacer()
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                }
                .listStyle(.inset)
                .background(Image("BackgroundImage")
                    .resizable()
                    .ignoresSafeArea(.all))
                .navigationBarTitle(K.title, displayMode: .inline)
                .searchable(text: $searchText)
                .foregroundColor(.gray)
                .preferredColorScheme(.dark)
            
            
        }
        
        .onAppear() {
            self.datasetManager.fetchLossesData()
            for family: String in UIFont.familyNames
            {
                print("\(family)")
                for names: String in UIFont.fontNames(forFamilyName: family)
                {
                    print("== \(names)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
