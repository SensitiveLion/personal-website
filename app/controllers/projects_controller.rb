class ProjectsController < ApplicationController
  def index
    @projects =Project.all
  end

  def show
    @project = project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @profile = Profile.find(params[:profile_id])
    @project.profile = @profile
    @project.user = current_user

    if @project.save
      flash[:notice] = "project submitted."
      redirect_to profile_path(@profile)
    else
      flash[:notice] = "failed to submit"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @profile = @project.profile
    if @project.update(project_params)
      flash[:notice] = "you have successfully edited the project!"
      redirect_to profile_path(@profile)
    else
      flash[:notice] = "failed to update project"
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @profile = @project.profile
    @project.destroy

    unless @profile.id.nil?
      redirect_to profile_path(@profile)
    end
  end

  def project_params
    params.require(:project).permit(:profile_id, :title, :link, :description, :image_link)
  end
end
