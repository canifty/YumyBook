//
//  Recipes.swift
//  YumBook
//
//  Created by Can Dindar on 2024-08-23.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let type: String
    let name: String
    let time: String
    let imageName: String
    let instructions: String
}
