//
//  Profile.swift
//  NavigationHeroEffect
//
//  Created by Berkay Dişli on 8.08.2023.
//

import Foundation

struct Profile: Identifiable {
    var id = UUID().uuidString
    var username: String
    var profilePic: String
    var lastMsg: String
    var lastActive: String
}

var profiles = [
    Profile(username: "iJustine", profilePic: "portrait1", lastMsg: "Hi there!", lastActive: "10:25 PM"),
    Profile(username: "Jenna Azarik", profilePic: "portrait2", lastMsg: "Nothing..", lastActive: "06:15 AM"),
    Profile(username: "Kaviya", profilePic: "portrait3", lastMsg: "Watching Netflix", lastActive: "08:46 PM"),
    Profile(username: "Emily", profilePic: "portrait4", lastMsg: "Wow!", lastActive: "11:11 AM"),
]
