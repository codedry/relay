require 'test_helper'

class SignInWithGithubTest < ActionDispatch::IntegrationTest
  test "sign in successfully" do
    visit "/"

    click_link "Sign in with Github"

    expected_message = "Successfully signed in!"
    assert page.has_content?(expected_message), "'#{expected_message}' was not found"

    expected_message = "Welcome Example!"
    assert page.has_content?(expected_message), "'#{expected_message}' was not found"
  end
end
