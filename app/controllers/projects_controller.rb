class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_pars)

    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_pars)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
  end

  private
    def project_pars
      params.require(:project).permit(:name, :notes, :grade)
    end

end
