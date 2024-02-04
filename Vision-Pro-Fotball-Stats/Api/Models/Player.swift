//
//  Player.swift
//  Vision-Pro-Fotball-Stats
//
//  Created by Mert Aydoğan on 04.02.2024.
//

import Foundation


public struct Player: Identifiable, Decodable, Equatable {
    
    public var id: Int
    public var name: String
    public var firstName: String?
    public var dateOfBirth: String?
    public var countryOfBirth: String?
    public var nationality: String?
    public var section: String?
    public var position: String?
    public var shirtNumber: Int?
    public var role: String?
    
}
