class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @companies = Company.find(params[:id])
  end
end
