//
//  Theme.swift
//  Scrumdinger
//
//  Created by Houssam Eddine Baba Bendermel on 2/8/2023.
//

import SwiftUI


enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        switch self {
        case .bubblegum:
            return Color(red: 255 / 255, green: 193 / 255, blue: 204 / 255) // Bubblegum color (light pink)
        case .buttercup:
            return Color(red: 255 / 255, green: 204 / 255, blue: 0 / 255) // Buttercup color (yellow)
        case .indigo:
            return Color(red: 75 / 255, green: 0 / 255, blue: 130 / 255) // Indigo color
        case .lavender:
            return Color(red: 230 / 255, green: 230 / 255, blue: 250 / 255) // Lavender color
        case .magenta:
            return Color(red: 1, green: 0, blue: 1)
        case .navy:
            return Color(red: 0 / 255, green: 0 / 255, blue: 128 / 255) // Navy color
        case .orange:
            return Color.orange
        case .oxblood:
            return Color(red: 128 / 255, green: 0 / 255, blue: 0 / 255) // Oxblood color (dark red)
        case .periwinkle:
            return Color(red: 204 / 255, green: 204 / 255, blue: 255 / 255) // Periwinkle color
        case .poppy:
            return Color(red: 237 / 255, green: 25 / 255, blue: 77 / 255) // Poppy color (red)
        case .purple:
            return Color.purple
        case .seafoam:
            return Color(red: 0 / 255, green: 128 / 255, blue: 128 / 255) // Seafoam color
        case .sky:
            return Color(red: 135 / 255, green: 206 / 255, blue: 250 / 255) // Sky color
        case .tan:
            return Color(red: 210 / 255, green: 180 / 255, blue: 140 / 255) // Tan color
        case .teal:
            return Color.teal
        case .yellow:
            return Color.yellow
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
    
}
