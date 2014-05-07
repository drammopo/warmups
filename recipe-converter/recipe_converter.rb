class RecipeConverter
  attr_reader :ingredients

  GRAMS_TO_A_TABLESPOON = 15
  TABLESPOONS_TO_A_CUP  = 16

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoon
    convert_to(:tablespoons)
  end

  def to_cups
    convert_to(:cups)
  end

  private

  def convert_to(type)
    result = []
    ingredients.each do |ingredient|
      ingredient.each do |name,grams|
        if type == :tablespoons
          result << ingredient[name] = conversion_to_cups(grams)
        elsif type == :cups
          result << ingredient[name] = conversion_to_tablespoons(grams)
        end
      end
    end
  end

  def conversion_to_cups(grams)
    (grams / GRAMS_TO_A_TABLESPOON.to_f)
  end

  def conversion_to_tablespoons(grams)
    ((grams / GRAMS_TO_A_TABLESPOON.to_f) / TABLESPOONS_TO_A_CUP.to_f)
  end
end
