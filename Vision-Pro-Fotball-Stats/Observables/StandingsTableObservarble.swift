//
//  StandingsTableObservarble.swift
//  Vision-Pro-Fotball-Stats
//
//  Created by Mert Aydoğan on 04.02.2024.
//

import Foundation
import Observation

@Observable
class StandingsTableObservable {
    
    let client = FootballDataClient(apiKey: apiKey)
    
    var fetchPhase = FetchPhase<[TeamStandingTable]>.initial
    var standings: [TeamStandingTable]? { fetchPhase.value }
    
    func fetchStandings(competition: Competition) async {
        /*
         fetchPhase = .fetching
         do {
         let standings = try await client.fetchStandings(competitionId:   competition.id)
         if Task.isCancelled { return }
         fetchPhase = .success(standings)
         } catch {
         fetchPhase = .failure(error)
         }
         */
        fetchPhase = .success(TeamStandingTable.stubs)
    }
}

extension TeamStandingTable {
    static var stubs: [TeamStandingTable] {
        let url = Bundle.main.url(forResource: "standings", withExtension: "json")!
        let standingResponse: StandingResponse = Utilities.loadStub(url: url)
        return standingResponse.standings!.first { $0.type == "TOTAL" }!.table
    }
}
 
