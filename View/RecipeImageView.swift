//
//  RecipeImageView.swift
//  YumBook
//
//  Created by Can Dindar on 2024-08-24.
//
import SwiftUI

struct RecipeImageView: View {
    var imageName: String
    var recipeType: String
    var recipeName: String
    var cookingTime: String

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
                .shadow(radius: 5, x: -10, y: 10)
            
            HStack(spacing: 30) {
                Text("Type: \(recipeType)")
                    .font(.footnote)
                    .bold()
                Text("Name: \(recipeName)")
                    .font(.footnote)
                    .bold()
                Text("Time: \(cookingTime)")
                    .font(.footnote)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .foregroundColor(.white)
            .background(Color.black.opacity(0.5))
            .cornerRadius(15)
            
        }
    }
}

#Preview {
    RecipeImageView(imageName: "tacos", recipeType: "Main Course", recipeName: "Taco", cookingTime: "1h")
}
