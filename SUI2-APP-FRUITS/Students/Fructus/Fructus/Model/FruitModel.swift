//
//  FruitModel.swift
//  Fructus
//
//  Created by Brandon Yates on 4/4/24.
//

import Foundation
import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
