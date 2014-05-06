require 'minitest/autorun'
require 'minitest/pride'
require_relative 'recipe_converter'

class RecipeConverterTest < MiniTest::Test

  def test_initialized_with_no_ingredients
    recipe_converter = RecipeConverter.new([])
    assert_equal [] , recipe_converter.list
  end

  def test_initialized_with_one_ingredient
    ingredients = [{:salt => 5}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal  [{:salt => 5}], recipe_converter.list
  end

  def test_initialized_with_two_ingredients
    ingredients = [{"salt" => 5}, {"olive oil" => 20}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal [{"salt" => 5}, {"olive oil" => 20}], recipe_converter.list
  end

  def test_converting_to_tablespoon_with_no_ingredients
    recipe_converter = RecipeConverter.new([])
    assert_equal [] , recipe_converter.to_tablespoon
  end

  def test_converting_to_tablespoon_with_one_ingredient
    ingredients = [{:salt => 15}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal  [{:salt => 1}], recipe_converter.to_tablespoon
  end

  def test_converting_to_tablespoon_with_two_ingredients
    ingredients = [{"salt" => 15}, {"olive oil" => 30}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal [{"salt" => 1}, {"olive oil" => 2}], recipe_converter.to_tablespoon
  end

  def test_converting_to_cups_with_no_ingredients
    recipe_converter = RecipeConverter.new([])
    assert_equal [] , recipe_converter.to_cups
  end

  def test_converting_to_cups_with_one_ingredient
    ingredients = [{:salt => 15}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal  [{:salt => 1}], recipe_converter.to_cups
  end

  def test_converting_to_cups_with_two_ingredients
    ingredients = [{"salt" => 15}, {"olive oil" => 30}]
    recipe_converter = RecipeConverter.new(ingredients)
    assert_equal [{"salt" => 1}, {"olive oil" => 2}], recipe_converter.to_cups
  end
end
