## https://github.com/GlobalNamesArchitecture/damerau-levenshtein
require "damerau-levenshtein"

class SearchRecipiesFromIngredients
  MAX_LEVENSHTEIN_DISTANCE = 50

  def self.call(fridge_ingredients)
    recipes = pg_search(fridge_ingredients)
    recipes = reject_recipes_with_other_ingredient(recipes, fridge_ingredients)
    # Explicite return
    return recipes
  end

  class << self

    private

    def pg_search(fridge_ingredients)
      Recipe.search_by_ingredients("%#{fridge_ingredients}%")
    end

    def reject_recipes_with_other_ingredient(recipes, fridge_ingredients)
      recipes.select do |recipe|
        # On veut avoir tous les ingredients de la recette
        recipe.ingredients.all? do |recipe_ingredient|
          include_in_fridge?(recipe_ingredient, fridge_ingredients)
        end
      end
    end

    def include_in_fridge?(recipe_ingredient, fridge_ingredients)
      fridge_ingredients.any? do |fridge_ingredient|
        dst = DamerauLevenshtein.distance(fridge_ingredient, recipe_ingredient)
        # Ici, je compare les ingrédients un à un
        dst <= MAX_LEVENSHTEIN_DISTANCE
      end
    end
  end
end
