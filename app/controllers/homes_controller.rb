class HomesController < ApplicationController
  def index
    @profile = Profile.all
    @projects = Project.order(:title).limit(10)
  end
end
