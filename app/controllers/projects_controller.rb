class ProjectsController < BaseController
  before_action :authenticate_member!, only: [:create, :new]

  def index
     @projects=Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @member = current_member
    @member.projects.create(project_params)

    redirect_to projects_path
  end

  private def project_params
    params.require(:project).permit(:name, :exposition)
  end
end
