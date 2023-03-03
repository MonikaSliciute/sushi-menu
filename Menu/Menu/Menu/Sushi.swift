//
//  Sushi.swift
//  Menu
//
//  Created by Monika Šličiūtė on 03/03/2023.
//

import SwiftUI

struct Sushi: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let image: String
    let vegetarian: Bool
    let spicy: Bool
}

