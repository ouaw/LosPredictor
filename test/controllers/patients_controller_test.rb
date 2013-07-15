require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { current_address: @patient.current_address, current_telephone: @patient.current_telephone, date_of_birth: @patient.date_of_birth, first_name: @patient.first_name, last_name: @patient.last_name, personal_health_number: @patient.personal_health_number }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { current_address: @patient.current_address, current_telephone: @patient.current_telephone, date_of_birth: @patient.date_of_birth, first_name: @patient.first_name, last_name: @patient.last_name, personal_health_number: @patient.personal_health_number }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
