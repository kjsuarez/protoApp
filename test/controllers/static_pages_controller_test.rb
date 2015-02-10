require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
  	@base_title = "protoApp"
  end

  test "should get home page" do
    get :home
    assert_response :success
    assert_select "title","#{@base_title} | home"
  end

  test "should get help page" do
    get :help
    assert_response :success
    assert_select "title","#{@base_title} | help"
  end

  test "should get about page" do
  	get :about
  	assert_response :success
  	assert_select "title","#{@base_title} | about"
  end
  
  test "should get contact page" do
  	get :contact
  	assert_response :success
  	assert_select "title","#{@base_title} | contact"
  end
end
