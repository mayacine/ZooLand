require 'test_helper'

class TypeTachesControllerTest < ActionDispatch::IntegrationTest
=begin  
  setup do
    @type_tach = type_taches(:one)
  end

  test "should get index" do
    get type_taches_url
    assert_response :success
  end

  test "should get new" do
    get new_type_tach_url
    assert_response :success
  end

  test "should create type_tach" do
    assert_difference('TypeTache.count') do
      post type_taches_url, params: { type_tach: { code: @type_tach.code, libelle: @type_tach.libelle } }
    end

    assert_redirected_to type_tach_url(TypeTache.last)
  end

  test "should show type_tach" do
    get type_tach_url(@type_tach)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_tach_url(@type_tach)
    assert_response :success
  end

  test "should update type_tach" do
    patch type_tach_url(@type_tach), params: { type_tach: { code: @type_tach.code, libelle: @type_tach.libelle } }
    assert_redirected_to type_tach_url(@type_tach)
  end

  test "should destroy type_tach" do
    assert_difference('TypeTache.count', -1) do
      delete type_tach_url(@type_tach)
    end

    assert_redirected_to type_taches_url
  end
=end  
end
