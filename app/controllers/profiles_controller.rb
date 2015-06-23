class ProfilesController < ApplicationController
  def index
    @Profiles = Profile.all
  end

  def show
    @Profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:notice] = "you have added a new profile!"
      redirect_to new_profile_lesson_path(@profile)
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      flash[:notice] = "you have successfully edited the profile!"
      redirect_to @profile
    else
      flash[:notice] = "failed to update profile"
      render :edit
    end
  end

  def destroy
    if current_user.has_authority?
      @profile = Profile.find(params[:id])
    else
      @profile = Profile.find_by!(user: current_user, id: params[:id])
    end
    @profile.destroy
    flash[:notice] = 'profile deleted.'
    redirect_to root_path
  end

  def profile_params
    params.require(:profile).permit(:name, :skills, :experience, :biography, :image_link)
  end
end
