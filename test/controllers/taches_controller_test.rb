require 'test_helper'

class TachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tach = taches(:one)
  end

  test "should get index" do
    get taches_url
    assert_response :success
  end

  test "should get new" do
    get new_tach_url
    assert_response :success
  end

  test "should create tach" do
    assert_difference('Tache.count') do
      post taches_url, params: { tach: { animal_id: @tach.animal_id, code: @tach.code, cree_par: @tach.cree_par, date_debut: @tach.date_debut, date_fin: @tach.date_fin, detail_tache: @tach.detail_tache, libelle: @tach.libelle, statut_tache_id: @tach.statut_tache_id, type_tache_id: @tach.type_tache_id, user_id: @tach.user_id } }
    end

    assert_redirected_to tach_url(Tache.last)
  end

  test "should show tach" do
    get tach_url(@tach)
    assert_response :success
  end

  test "should get edit" do
    get edit_tach_url(@tach)
    assert_response :success
  end

  test "should update tach" do
    patch tach_url(@tach), params: { tach: { animal_id: @tach.animal_id, code: @tach.code, cree_par: @tach.cree_par, date_debut: @tach.date_debut, date_fin: @tach.date_fin, detail_tache: @tach.detail_tache, libelle: @tach.libelle, statut_tache_id: @tach.statut_tache_id, type_tache_id: @tach.type_tache_id, user_id: @tach.user_id } }
    assert_redirected_to tach_url(@tach)
  end

  test "should destroy tach" do
    assert_difference('Tache.count', -1) do
      delete tach_url(@tach)
    end

    assert_redirected_to taches_url
  end
end
