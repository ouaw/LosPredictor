require 'test_helper'

class HospitalizationsControllerTest < ActionController::TestCase
  setup do
    @hospitalization = hospitalizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitalizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospitalization" do
    assert_difference('Hospitalization.count') do
      post :create, hospitalization: { adm_date: @hospitalization.adm_date, admitting_program: @hospitalization.admitting_program, age_at_admission: @hospitalization.age_at_admission, age_group_at_admission: @hospitalization.age_group_at_admission, current_days: @hospitalization.current_days, current_est_dsc_date: @hospitalization.current_est_dsc_date, current_est_los: @hospitalization.current_est_los, est_dsc_date_at_admission: @hospitalization.est_dsc_date_at_admission, est_los_at_admission: @hospitalization.est_los_at_admission, mr_dx_at_admission: @hospitalization.mr_dx_at_admission, mr_dx_at_admission_group: @hospitalization.mr_dx_at_admission_group, physician_est_dsc_date: @hospitalization.physician_est_dsc_date }
    end

    assert_redirected_to hospitalization_path(assigns(:hospitalization))
  end

  test "should show hospitalization" do
    get :show, id: @hospitalization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospitalization
    assert_response :success
  end

  test "should update hospitalization" do
    patch :update, id: @hospitalization, hospitalization: { adm_date: @hospitalization.adm_date, admitting_program: @hospitalization.admitting_program, age_at_admission: @hospitalization.age_at_admission, age_group_at_admission: @hospitalization.age_group_at_admission, current_days: @hospitalization.current_days, current_est_dsc_date: @hospitalization.current_est_dsc_date, current_est_los: @hospitalization.current_est_los, est_dsc_date_at_admission: @hospitalization.est_dsc_date_at_admission, est_los_at_admission: @hospitalization.est_los_at_admission, mr_dx_at_admission: @hospitalization.mr_dx_at_admission, mr_dx_at_admission_group: @hospitalization.mr_dx_at_admission_group, physician_est_dsc_date: @hospitalization.physician_est_dsc_date }
    assert_redirected_to hospitalization_path(assigns(:hospitalization))
  end

  test "should destroy hospitalization" do
    assert_difference('Hospitalization.count', -1) do
      delete :destroy, id: @hospitalization
    end

    assert_redirected_to hospitalizations_path
  end
end
