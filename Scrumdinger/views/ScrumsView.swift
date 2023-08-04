//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Houssam Eddine Baba Bendermel on 2/8/2023.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View{
        NavigationStack{
            List(scrums){ scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .padding()
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View{
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
