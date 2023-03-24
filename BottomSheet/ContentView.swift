//
//  ContentView.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("swift")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .cornerRadius(20)
                    Text("Mario")
                    Spacer()
                    Image(systemName: "chevron.down.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .cornerRadius(20)
                        .onTapGesture {
                            print("present bottom sheet")
                        }

                }
                .frame(maxWidth: .infinity)
                .padding(30)
                .background(Color(uiColor: .systemGray5))
                .cornerRadius(12)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            Image("swift")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
