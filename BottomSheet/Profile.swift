//
//  Profile.swift
//  BottomSheet
//
//  Created by Alex Paul on 3/31/23.
//

import Foundation

struct Profile: Hashable {
    let name: String // "Swift"
    let image: String // "swift"
    
    static var data: [Profile] {
        [
            .init(name: "Swift", image: "swift"),
            .init(name: "Mario", image: "super-mario-bros-movie"),
            .init(name: "Javascript", image: "javascript"),
            .init(name: "Wakanda", image: "wakanda"),
            .init(name: "Year of the Rabbit🧧🐇", image: "year-of-the-rabbit")
        ]
    }
}
