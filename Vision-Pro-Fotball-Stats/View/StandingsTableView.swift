//
//  StandingsTableView.swift
//  Vision-Pro-Fotball-Stats
//
//  Created by Mert Aydoğan on 04.02.2024.
//

import SwiftUI

struct StandingsTableView: View {
    
    let competition: Competition
    
    var body: some View {
        Text("Hello world!")
        .foregroundStyle(Color.primary)
        .navigationTitle(competition.name)
    }
}

#Preview {
    NavigationStack {
        StandingsTableView(competition: .defaultCompetitions[0])
    }
}
