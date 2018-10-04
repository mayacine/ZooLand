require 'test_helper'

class AnimalsControllerTest <  Capybara::Rails::TestCase
  include Devise::Test::IntegrationHelpers
   setup do
     @animal = animals(:one)
     sign_in users(:bob)
   end

   test "should get index" do
      visit animals_path
      assert_current_path animals_path
   end

    test "should get new" do
      visit new_animal_url
      assert_current_path new_animal_url
    end

    test "should create animal" do
      visit animals_path

      click_on 'Nouvel Animal'

      fill_in 'Nom', with: @animal.nom    
      find('#type_animal').find(:xpath, 'option[2]').select_option
      attach_file('avatar', Rails.root + 'app/assets/images/lion.jpg')   

      click_on 'create-animal'

      assert_current_path animal_path(Animal.last)
      assert page.has_content?(@animal.nom)
      assert page.has_content?(@animal.code)
    end

  # test "should show animal" do
  #   get animal_url(@animal)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_animal_url(@animal)
  #   assert_response :success
  # end

  # test "should update animal" do
  #   patch animal_url(@animal), params: { animal: { code: @animal.code, nom: @animal.nom, type_animal_id: @animal.type_animal_id } }
  #   assert_redirected_to animal_url(@animal)
  # end

  # test "should destroy animal" do
  #   assert_difference('Animal.count', -1) do
  #     delete animal_url(@animal)
  #   end

  #   assert_redirected_to animals_url
  # end
end
