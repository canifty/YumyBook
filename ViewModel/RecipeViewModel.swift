//
//  RecipeViewModel.swift
//  YumBook
//
//  Created by Can Dindar on 2024-08-24.
//

import SwiftUI

class RecipeViewModel: ObservableObject {
    /* @Published */ var recipes: [Recipe] = [
        Recipe(type: "Main Course", name: "Taco", time: "1h", imageName: "tacos",
               instructions:
               """
                1) Brown ground beef in a skillet over medium heat. Drain excess fat, add taco seasoning, and a bit of water. Simmer for a few minutes.
                2)Heat corn or flour tortillas on a dry skillet for about 30 seconds on each side until warm.
                3) Spoon the meat mixture onto the tortillas. Top with shredded lettuce, diced tomatoes, cheese, sour cream, and salsa.
                4) Fold the tortillas in half and enjoy!
              """
              ),
        Recipe(type: "Dessert", name: "Souffle", time: "2h", imageName: "souffle",
               instructions: """
                1) Mix 1 cup flour, 2 eggs, 1/2 cup milk, 1/2 cup water, 1/4 teaspoon salt, and 2 tablespoons melted butter until smooth.
                2) Heat a lightly oiled non-stick skillet over medium heat. Pour in a small amount of batter and tilt the pan to spread it evenly.
                3) Cook for 1-2 minutes until the bottom is light brown. Flip and cook the other side for about 30 seconds.
                3) Fill with sweet (e.g., fruit, Nutella) or savory (e.g., ham, cheese) fillings. Roll or fold and serve warm.
            """
              ),
        Recipe(type: "Breakfast", name: "Crepe", time: "30m", imageName: "crepe",
               instructions: """
                1) Preheat the oven to 375°F (190°C). Melt 2 tablespoons butter in a saucepan, stir in 2 tablespoons flour, and cook for a minute. Gradually whisk in 1 cup milk until thickened. Remove from heat, stir in 3 egg yolks, cheese (for savory) or chocolate (for sweet), and seasoning.
                2) Beat 4 egg whites with a pinch of salt until stiff peaks form.
                3) Gently fold the egg whites into the base mixture. Pour into a greased soufflé dish.
                4) Bake in the oven for 20-25 minutes for a sweet soufflé, or 30-35 minutes for a savory soufflé, until puffed and golden. Serve immediately.
            """
              )
    ]
    
}
