class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
  end

  def new
    @issue = Issue.new
    @vote = Vote.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to issues_path
    else
      redner :new
    end
  end

  def edit
  end

  def destroy
  end

  private

    def issue_params
      params.require(:issue).permit(:title, :description)
    end
end
