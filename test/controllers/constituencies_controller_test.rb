require 'test_helper'

class ConstituenciesControllerTest < ActionController::TestCase
  setup do
    @constituency = constituencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constituencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituency" do
    assert_difference('Constituency.count') do
      post :create, constituency: { invalid_more_choises: @constituency.invalid_more_choises, invalid_no_choise: @constituency.invalid_no_choise, invalid_other: @constituency.invalid_other, name: @constituency.name, used_ballots: @constituency.used_ballots, voivodeship_id: @constituency.voivodeship_id, voters: @constituency.voters }
    end

    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should show constituency" do
    get :show, id: @constituency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituency
    assert_response :success
  end

  test "should update constituency" do
    patch :update, id: @constituency, constituency: { invalid_more_choises: @constituency.invalid_more_choises, invalid_no_choise: @constituency.invalid_no_choise, invalid_other: @constituency.invalid_other, name: @constituency.name, used_ballots: @constituency.used_ballots, voivodeship_id: @constituency.voivodeship_id, voters: @constituency.voters }
    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should destroy constituency" do
    assert_difference('Constituency.count', -1) do
      delete :destroy, id: @constituency
    end

    assert_redirected_to constituencies_path
  end
end
