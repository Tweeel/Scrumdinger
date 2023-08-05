//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Houssam Eddine Baba Bendermel on 31/7/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
