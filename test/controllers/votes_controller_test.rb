require "test_helper"

class VotesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @issue = issues(:one)
    @item = @issue.items.create(name: "name")
    sign_in_as(@user)
  end

  test "controller has index action" do
    post :create, params: { item_id: @item.id, issue_id: @issue.id }
    assert_equal 302, response.status
  end
end