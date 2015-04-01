require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
   test "invalid signup fails " do
   		
   		get signup_path
   		assert_no_difference 'User.count' do
   			post users_path, user: {name:  "",
                           email: "user@invalid",
                           password: "foo",
                           password_confirmation: "bar"}
   		end
   		assert_template 'users/new'
   end

   test "valid signup creates user" do
   	get signup_path
   	assert_difference 'User.count' do
   		post_via_redirect users_path, user: {name:  "kevin",
                           email: "user@valid.com",
                           password: "password",
                           password_confirmation: "password"}
   	end
   	assert_template 'users/show'
      assert is_logged_in?
   end

end
