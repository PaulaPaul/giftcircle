require 'test_helper'

class CircleMembersControllerTest < ActionController::TestCase
  setup do
    @circle_member = circle_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circle_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circle_member" do
    assert_difference('CircleMember.count') do
      post :create, circle_member: { giftCircle_id: @circle_member.giftCircle_id, giftGiven?: @circle_member.giftGiven?, gift_id: @circle_member.gift_id, giverNickname: @circle_member.giverNickname, giverNotes: @circle_member.giverNotes, giver_id: @circle_member.giver_id, personInterests: @circle_member.personInterests, person_id: @circle_member.person_id, thankYou: @circle_member.thankYou }
    end

    assert_redirected_to circle_member_path(assigns(:circle_member))
  end

  test "should show circle_member" do
    get :show, id: @circle_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @circle_member
    assert_response :success
  end

  test "should update circle_member" do
    patch :update, id: @circle_member, circle_member: { giftCircle_id: @circle_member.giftCircle_id, giftGiven?: @circle_member.giftGiven?, gift_id: @circle_member.gift_id, giverNickname: @circle_member.giverNickname, giverNotes: @circle_member.giverNotes, giver_id: @circle_member.giver_id, personInterests: @circle_member.personInterests, person_id: @circle_member.person_id, thankYou: @circle_member.thankYou }
    assert_redirected_to circle_member_path(assigns(:circle_member))
  end

  test "should destroy circle_member" do
    assert_difference('CircleMember.count', -1) do
      delete :destroy, id: @circle_member
    end

    assert_redirected_to circle_members_path
  end
end
