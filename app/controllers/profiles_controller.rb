class ProfilesController < ApplicationController
  def index
    @Profiles = Profile.all
  end

  def show
    @Profile = Profile.find(params[:id])
  end
end
