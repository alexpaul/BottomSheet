//
//  ProfileList.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/31/23.
//

import SwiftUI

struct ProfileList: View {
    var body: some View {
      List {
        ForEach(Profile.data, id:\.self) { profile in
          ProfileView(profile: profile)
        }
      }
    }
}

struct ProfileList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileList()
    }
}
