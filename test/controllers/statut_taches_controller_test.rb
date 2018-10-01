require 'test_helper'

class StatutTachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statut_tach = statut_taches(:one)
    @password = "password"
    @confirmed_user = User.create(email: "admin@example.com", password: @password)
    sign_in(@confirmed_user.email, @password)
  end

  test "should get index" do
    get statut_taches_url
    assert_response :success
  end

  test "should get new" do
    get new_statut_tach_url
    assert_response :success
  end

  test "should create statut_tach" do
    assert_difference('StatutTache.count') do
      post statut_taches_url, params: { statut_tach: { code: @statut_tach.code, libelle: @statut_tach.libelle } }
    end

    assert_redirected_to statut_tach_url(StatutTache.last)
  end

  test "should show statut_tach" do
    get statut_tach_url(@statut_tach)
    assert_response :success
  end

  test "should get edit" do
    get edit_statut_tach_url(@statut_tach)
    assert_response :success
  end

  test "should update statut_tach" do
    patch statut_tach_url(@statut_tach), params: { statut_tach: { code: @statut_tach.code, libelle: @statut_tach.libelle } }
    assert_redirected_to statut_tach_url(@statut_tach)
  end

  test "should destroy statut_tach" do
    assert_difference('StatutTache.count', -1) do
      delete statut_tach_url(@statut_tach)
    end

    assert_redirected_to statut_taches_url
  end
end
