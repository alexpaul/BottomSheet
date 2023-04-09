//
//  ContentView.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isBottomSheetPresented = false

    // Source of truth for selected profile
    @State private var selectedProfile = Profile.data[3]

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image(selectedProfile.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                    Text(selectedProfile.name)
                    Spacer()
                    Image(systemName: "chevron.down.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .cornerRadius(20)
                        .onTapGesture {
                            isBottomSheetPresented.toggle()
                        }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(30)
                .background(Color(uiColor: .systemGray5))
                .cornerRadius(12)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            Image(selectedProfile.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .sheet(isPresented: $isBottomSheetPresented) {
            // ProfileList() // full modal presentation
            ProfileList(selectedProfile: $selectedProfile)
                .presentationDetents([
                    .fraction(0.3),
                    .medium,
                    .large
                ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
