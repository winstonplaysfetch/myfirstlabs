class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def new
  end
  
  def create
    @project = Project.new(project_params)
    
    @project.save
    redirect_to @project
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    
    redirect_to projects_path
  end
  
  def show
    @project = Project.find(params[:id])
  end


private
  def project_params
    params.require(:project).permit(:name, :description, :image, :video)
  end
end