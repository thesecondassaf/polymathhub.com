class DiscussionsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @discussion = Discussion.new
  end
end
