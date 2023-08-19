//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Houssam Eddine Baba Bendermel on 2/8/2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    @State private var creatingScrum = DailyScrum.emptyScrum
    
    var body: some View{
        NavigationStack{
            List($scrums){ $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .padding()
                .accessibilityLabel("New Scrum")
            }
            .sheet(isPresented: $isPresentingNewScrumView) {
                NewScrumSheet(scrums: $scrums,
                               isPresentingNewScrumView: $isPresentingNewScrumView)
            }
        }
        
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View{
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
