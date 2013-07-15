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
      post :create, hospitalization: { admission_date: @hospitalization.admission_date, admitting_program: @hospitalization.admitting_program, age_at_admission: @hospitalization.age_at_admission, age_group_at_admission: @hospitalization.age_group_at_admission, current_days: @hospitalization.current_days, current_estimated_discharge_date: @hospitalization.current_estimated_discharge_date, current_estimated_los: @hospitalization.current_estimated_los, estimated_discharge_date_at_admission: @hospitalization.estimated_discharge_date_at_admission, estimated_los_at_admission: @hospitalization.estimated_los_at_admission, most_responsible_diagnosis_at_admission: @hospitalization.most_responsible_diagnosis_at_admission, most_responsible_diagnosis_group_at_admission: @hospitalization.most_responsible_diagnosis_group_at_admission, patient_id: @hospitalization.patient_id, physician_estimate_discharge_date: @hospitalization.physician_estimate_discharge_date }
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
    patch :update, id: @hospitalization, hospitalization: { admission_date: @hospitalization.admission_date, admitting_program: @hospitalization.admitting_program, age_at_admission: @hospitalization.age_at_admission, age_group_at_admission: @hospitalization.age_group_at_admission, current_days: @hospitalization.current_days, current_estimated_discharge_date: @hospitalization.current_estimated_discharge_date, current_estimated_los: @hospitalization.current_estimated_los, estimated_discharge_date_at_admission: @hospitalization.estimated_discharge_date_at_admission, estimated_los_at_admission: @hospitalization.estimated_los_at_admission, most_responsible_diagnosis_at_admission: @hospitalization.most_responsible_diagnosis_at_admission, most_responsible_diagnosis_group_at_admission: @hospitalization.most_responsible_diagnosis_group_at_admission, patient_id: @hospitalization.patient_id, physician_estimate_discharge_date: @hospitalization.physician_estimate_discharge_date }
    assert_redirected_to hospitalization_path(assigns(:hospitalization))
  end

  test "should destroy hospitalization" do
    assert_difference('Hospitalization.count', -1) do
      delete :destroy, id: @hospitalization
    end

    assert_redirected_to hospitalizations_path
  end
end
