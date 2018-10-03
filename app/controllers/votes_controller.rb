class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to root_path
    else
      flash[:error] = "fail"
      redirect_to root_path
    end
  end

  private

    def vote_params
      params.require(:vote).permit(:item_id, :user_id, :issue_id)
    end
end
