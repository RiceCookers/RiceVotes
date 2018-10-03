class VotesController < ApplicationController
  before_action :set_issue, :set_item

  def create
    vote = @item.votes.build(user: current_user, issue: @issue)

    if vote.save
      redirect_to root_path
    else
      flash[:error] = "Sorry...Error...!"
      redirect_to root_path
    end
  end

  private

    def set_issue
      @issue = Issue.find(params[:issue_id])
    end

    def set_item
      @item = @issue.items.find(params[:item_id])
    end
end
