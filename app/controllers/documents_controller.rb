class DocumentsController < ApplicationController
  def show
    @documents = Document.find(params[:id])
  end
end
