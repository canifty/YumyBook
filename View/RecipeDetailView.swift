import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Image(recipe.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                    
                    VStack(alignment: .leading) {
                        Text(recipe.name)
                        
                            .font(.largeTitle)
                        //                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Type: \(recipe.type)")
                                .font(.headline)
                                .padding(.trailing, 10)
                            
                            Text("Cooking Time: \(recipe.time)")
                                .font(.headline)
                        }
                        .padding(.bottom, 20)
                        
                        // Add cooking instructions here
                        Text("Step by Step Process")
                            .font(.title2)
                            .padding(.bottom, 5)
                        
                        Text(recipe.instructions)
                            .fontWeight(.light)
                        
                        Spacer()
                    }
                    .padding()
                    //
                    .cornerRadius(20) // Optional: round corners for the content area
                }
                .padding()
            }
        }
        .background(
            Image(recipe.imageName)
                .resizable()
                .opacity(0.07)
                .scaledToFill()
                .ignoresSafeArea()
            
        )
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RecipeDetailView(recipe: Recipe(type: "Main Course", name: "Taco", time: "1h", imageName: "tacos", instructions: """
                1) Brown ground beef in a skillet over medium heat. Drain excess fat, add taco seasoning, and a bit of water. Simmer for a few minutes.
                2) Heat corn or flour tortillas on a dry skillet for about 30 seconds on each side until warm.
                3) Spoon the meat mixture onto the tortillas. Top with shredded lettuce, diced tomatoes, cheese, sour cream, and salsa.
                4) Fold the tortillas in half and enjoy!
              """))
}
