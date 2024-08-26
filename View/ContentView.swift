import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = RecipeViewModel()
    @State private var searchText = ""
    
    var filteredRecipe: [Recipe] {
        guard !searchText.isEmpty else { return viewModel.recipes}
        return viewModel.recipes.filter { $0.name.localizedCaseInsensitiveContains(searchText)}
    }

    var body: some View {
        NavigationStack {
            
            ZStack {
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.white]),
                    center: .leading,
                    angle: .degrees(25)
                )
                    .ignoresSafeArea()
                List {
                    ForEach(filteredRecipe) { recipe in
                        Section {
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                RecipeImageView(
                                    imageName: recipe.imageName,
                                    recipeType: recipe.type,
                                    recipeName: recipe.name,
                                    cookingTime: recipe.time
                                )
                            }
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Let's Cookin'")
        }
        .searchable(text: $searchText, prompt: "Find Recipes")
    }
}

#Preview {
    ContentView()
}
