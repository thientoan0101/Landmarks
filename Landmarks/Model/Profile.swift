//
//  Profile.swift
//  Landmarks
//
//  Created by Toan Thien on 19/04/2022.
//

import Foundation

struct Profile {
    
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "ThienToan")
    
    enum Season: String, CaseIterable, Identifiable {
        case sprint = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        var id: String { rawValue }
    }
    
    
}
