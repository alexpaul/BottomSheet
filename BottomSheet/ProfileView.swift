//
//  ProfileView.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/31/23.
//

import SwiftUI

struct ProfileView: View {
    let profile: Profile

    // Source of truth
    // @State private var selectedProfile = Profile.data[0]

    // creates a two-way communication between itself and
    // other view
    @Binding var selectedProfile: Profile

    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        HStack {
            Image(profile.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            Text(profile.name)
            Spacer()
            Image(systemName: selectedProfile == profile ? "button.programmable" : "circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(selectedProfile == profile ? .blue : .gray)
                .frame(width: 30)
                .onTapGesture {
                    // changing `selectedProfile` will
                    // re-render all views associated with
                    // it
                    selectedProfile = profile

                    dismiss()
                }
        }
        .padding(.horizontal, 20)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profile: Profile.data[3], selectedProfile: .constant(Profile.data[3]))
    }
}
