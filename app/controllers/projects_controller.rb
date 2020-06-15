class ProjectsController < ApplicationController
  before_action :authenticate_member!, only: [:create, :new]

  def index
     @projects=Project.all
  end
  def new
    set_flash_message! :notice, :signed_out
  end
end
