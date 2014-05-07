class RecipeConverter
  attr_reader :ingredients

  GRAMS_TO_A_TABLESPOON = 15
  TABLESPOONS_TO_A_CUP = 16

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoon
    result = []
    ingredients.each do |ingredient|
      ingredient.each do |name,grams|
        result << ingredient[name] = grams / GRAMS_TO_A_TABLESPOON
      end
    end
  end

  def to_cups
    result = []
    ingredients.each do |ingredient|
      ingredient.each do |name,grams|
        result << ingredient[name] = ((grams / GRAMS_TO_A_TABLESPOON.to_f) / TABLESPOONS_TO_A_CUP.to_f)
      end
    end
  end
end
