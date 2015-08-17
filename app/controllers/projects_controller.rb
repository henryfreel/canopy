class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def new
    @project = Project.new
    if current_user
      render :new
    else
      redirect_to login_path
    end
  end

  def create
    if current_user
      project = Project.new(project_params)
      project.user_id = session[:user_id]
      if project.save
        flash[:notice] = 'Project created.'
        redirect_to project_path(project)
      else
        flash[:error] = project.errors.full_messages.join(", ")
        redirect_to new_project_path
      end
    else
      redirect_to login_path
    end
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    project = Project.find(params[:id])
    if current_user && current_user[:id] == project[:user_id]
      project.update_attributes(project_params)
      redirect_to project_path(project)
    else
      redirect_to root_path
    end
  end

  def destroy
    project = Project.find(params[:id])
    if current_user.projects.include?(project)
      project.destroy
      redirect_to profile_path
    else
      redirect_to root_path
    end
  end

  private
    def project_params
      params.require(:project).permit(:title, :live_url, :github_url, :description, :snippet)
    end

end
