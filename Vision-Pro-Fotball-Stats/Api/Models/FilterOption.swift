//
//  FilterOption.swift
//  Vision-Pro-Fotball-Stats
//
//  Created by Mert Aydoğan on 04.02.2024.
//

import Foundation

public enum FilterOption: Identifiable, Hashable {
    static let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy"
        return df
    }()
    
    public var id: String {
        switch self {
        case .latest:
            return "lastest"
        case .year(let int):
            return String(int)
        }
    }
    
    case latest
    case year(Int)
    
    public var text: String {
        switch self {
        case .latest:
            return "lastest"
        case .year(let int):
            return "\(int)/\(int + 1)"
        }
    }
    
    public var urlQuery: String {
        switch self {
        case .latest:
            return "date=\(Self.dateFormatter.string(from: .now))"
        case .year(let int):
            return "season=\(String(int))"
        }
    }
}
