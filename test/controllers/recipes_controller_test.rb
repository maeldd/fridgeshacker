require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { author: @recipe.author, author_tip: @recipe.author_tip, budget: @recipe.budget, cook_time: @recipe.cook_time, difficulty: @recipe.difficulty, image: @recipe.image, ingredients: @recipe.ingredients, name: @recipe.name, nb_comments: @recipe.nb_comments, people_quantity: @recipe.people_quantity, prep_time: @recipe.prep_time, rate: @recipe.rate, tags: @recipe.tags, total_time: @recipe.total_time } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { author: @recipe.author, author_tip: @recipe.author_tip, budget: @recipe.budget, cook_time: @recipe.cook_time, difficulty: @recipe.difficulty, image: @recipe.image, ingredients: @recipe.ingredients, name: @recipe.name, nb_comments: @recipe.nb_comments, people_quantity: @recipe.people_quantity, prep_time: @recipe.prep_time, rate: @recipe.rate, tags: @recipe.tags, total_time: @recipe.total_time } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
