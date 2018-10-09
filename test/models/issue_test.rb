require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  setup do
    @issue = Issue.new(title: "title", description: "description")
  end

  test "when valid" do
    assert true, @issue.valid?
  end

  test "when title nil" do
    @issue.title = nil
    refute @issue.valid?
    assert_not_nil @issue.errors[:title]
  end

  test "when description nil" do
    @issue.description = nil
    refute @issue.valid?
    assert_not_nil @issue.errors[:description]
  end
end
