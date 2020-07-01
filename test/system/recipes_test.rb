require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Author", with: @recipe.author
    fill_in "Author tip", with: @recipe.author_tip
    fill_in "Budget", with: @recipe.budget
    fill_in "Cook time", with: @recipe.cook_time
    fill_in "Difficulty", with: @recipe.difficulty
    fill_in "Image", with: @recipe.image
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Name", with: @recipe.name
    fill_in "Nb comments", with: @recipe.nb_comments
    fill_in "People quantity", with: @recipe.people_quantity
    fill_in "Prep time", with: @recipe.prep_time
    fill_in "Rate", with: @recipe.rate
    fill_in "Tags", with: @recipe.tags
    fill_in "Total time", with: @recipe.total_time
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Author", with: @recipe.author
    fill_in "Author tip", with: @recipe.author_tip
    fill_in "Budget", with: @recipe.budget
    fill_in "Cook time", with: @recipe.cook_time
    fill_in "Difficulty", with: @recipe.difficulty
    fill_in "Image", with: @recipe.image
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Name", with: @recipe.name
    fill_in "Nb comments", with: @recipe.nb_comments
    fill_in "People quantity", with: @recipe.people_quantity
    fill_in "Prep time", with: @recipe.prep_time
    fill_in "Rate", with: @recipe.rate
    fill_in "Tags", with: @recipe.tags
    fill_in "Total time", with: @recipe.total_time
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
