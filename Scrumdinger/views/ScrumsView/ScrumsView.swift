//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Houssam Eddine Baba Bendermel on 2/8/2023.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingCreateView = false
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
                    isPresentingCreateView = true
                }) {
                    Image(systemName: "plus")
                }
                .padding()
                .accessibilityLabel("New Scrum")
            }
            .sheet(isPresented: $isPresentingCreateView) {
                NavigationStack {
                    DetailEditView(scrum: $creatingScrum)
                        .toolbar{
                            ToolbarItem(placement: .cancellationAction){
                                Button("Cancel"){
                                    isPresentingCreateView = false
                                }
                            }
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Done") {
                                    isPresentingCreateView = false
                                    scrums.append(creatingScrum)
                                }
                            }
                        }
                }
            }
        }
        
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View{
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
