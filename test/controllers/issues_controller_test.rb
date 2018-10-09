class IssuesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @issue = issues(:one)
    sign_in_as(@user)
  end

  test "controller has index action" do
    get :index
    assert_equal 200, response.status
  end
end