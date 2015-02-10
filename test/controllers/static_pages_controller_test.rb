require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home page" do
    get :home
    assert_response :success
    assert_select "title","protoApp | home"
  end

  test "should get help page" do
    get :help
    assert_response :success
    assert_select "title","protoApp | help"
  end

  test "should get about page" do
  	get :about
  	assert_response :success
  	assert_select "title","protoApp | about"
  end

end
