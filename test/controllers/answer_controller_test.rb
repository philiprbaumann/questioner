require 'test_helper'

class AnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get answer_post_url
    assert_response :success
  end

end
