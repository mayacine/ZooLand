require 'test_helper'

class TypeAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_animal = type_animals(:one)
  end

  test "should get index" do
    get type_animals_url
    assert_response :success
  end

  test "should get new" do
    get new_type_animal_url
    assert_response :success
  end

  test "should create type_animal" do
    assert_difference('TypeAnimal.count') do
      post type_animals_url, params: { type_animal: { code: @type_animal.code, libelle: @type_animal.libelle } }
    end

    assert_redirected_to type_animal_url(TypeAnimal.last)
  end

  test "should show type_animal" do
    get type_animal_url(@type_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_animal_url(@type_animal)
    assert_response :success
  end

  test "should update type_animal" do
    patch type_animal_url(@type_animal), params: { type_animal: { code: @type_animal.code, libelle: @type_animal.libelle } }
    assert_redirected_to type_animal_url(@type_animal)
  end

  test "should destroy type_animal" do
    assert_difference('TypeAnimal.count', -1) do
      delete type_animal_url(@type_animal)
    end

    assert_redirected_to type_animals_url
  end
end
