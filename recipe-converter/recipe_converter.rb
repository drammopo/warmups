class RecipeConverter
  attr_reader :ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoon
    result = []
    ingredients.each do |ingredient|
      ingredient.each do |name,grams|
        result << ingredient[name] = grams / 15
      end
    end
  end

  def to_cups
    result = []
    ingredients.each do |ingredient|
      ingredient.each do |name,grams|
        result << ingredient[name] = ((grams / 15) / 16)
      end
    end
  end
end
