//
//  ProfileView.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/31/23.
//

import SwiftUI

struct ProfileView: View {
  let profile: Profile
  
  var body: some View {
    HStack {
      Image(profile.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 40, height: 40)
        .cornerRadius(20)
      Text(profile.name)
      Spacer()
      Image(systemName: "circle")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .foregroundColor(.gray)
        .frame(width: 30)
    }
    .padding(.horizontal, 20)
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView(profile: Profile.data[3])
  }
}
