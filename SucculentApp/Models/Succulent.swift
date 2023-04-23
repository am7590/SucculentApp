//
//  Succulent.swift
//  SucculentApp
//
//  Created by Alek Michelson on 4/22/23.
//

import Foundation
import SwiftUI

struct Succulent: Identifiable {
    let id: String
    let name: String
    let image: Image
    
    /// How often the plant should be watered
    var waterPeriod: Int
    
    /// Where is the succulent stored?
    // TODO: Allow user to add custom locations
    
    /// Tags
    // TODO: Allow users to create custom tags to filter succulent list
    
    /// History
    // TODO: Watering history
}

extension Succulent {
    @SucculentArrayBuilder
    static func allSucculents() -> [Succulent] {
        Succulent(id: "succ-1", name: "Green Guy", image: Image("succ1"), waterPeriod: 7)
        Succulent(id: "succ-2", name: "Purple Guy", image: Image("succ2"), waterPeriod: 5)
        Succulent(id: "succ-3", name: "Pointy Guy", image: Image("succ3"), waterPeriod: 10)
        Succulent(id: "succ-4", name: "Jade", image: Image("succ4"), waterPeriod: 5)
        Succulent(id: "succ-5", name: "Prikley Guy", image: Image("succ5"), waterPeriod: 8)
        Succulent(id: "succ-6", name: "Panda", image: Image("succ6"), waterPeriod: 7)
    }
}

@resultBuilder
enum SucculentArrayBuilder {
    static func buildExpression(_ expression: Succulent) -> [Succulent] {
        return [expression]
    }
    
    // Required
    static func buildBlock(_ succulents: [Succulent]...) -> [Succulent] {
        return succulents.flatMap { $0 }
    }
}
