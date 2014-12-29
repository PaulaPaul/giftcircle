require 'test_helper'

class GiftCirclesControllerTest < ActionController::TestCase
  setup do
    @gift_circle = gift_circles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_circles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_circle" do
    assert_difference('GiftCircle.count') do
      post :create, gift_circle: { about: @gift_circle.about, active?: @gift_circle.active?, annon_admin?: @gift_circle.annon_admin?, giving_date: @gift_circle.giving_date, max_giftprice: @gift_circle.max_giftprice, min_giftprice: @gift_circle.min_giftprice, name: @gift_circle.name, person_id: @gift_circle.person_id, reveal_date: @gift_circle.reveal_date, theme: @gift_circle.theme }
    end

    assert_redirected_to gift_circle_path(assigns(:gift_circle))
  end

  test "should show gift_circle" do
    get :show, id: @gift_circle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_circle
    assert_response :success
  end

  test "should update gift_circle" do
    patch :update, id: @gift_circle, gift_circle: { about: @gift_circle.about, active?: @gift_circle.active?, annon_admin?: @gift_circle.annon_admin?, giving_date: @gift_circle.giving_date, max_giftprice: @gift_circle.max_giftprice, min_giftprice: @gift_circle.min_giftprice, name: @gift_circle.name, person_id: @gift_circle.person_id, reveal_date: @gift_circle.reveal_date, theme: @gift_circle.theme }
    assert_redirected_to gift_circle_path(assigns(:gift_circle))
  end

  test "should destroy gift_circle" do
    assert_difference('GiftCircle.count', -1) do
      delete :destroy, id: @gift_circle
    end

    assert_redirected_to gift_circles_path
  end
end
