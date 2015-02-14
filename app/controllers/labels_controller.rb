class LabelsController < ApplicationController
  def index
    @list = Api::Labels.all
    respond_to do |format|
      format.html
      format.json { render json: @list }
    end
  end
  def create
    Api::Labels.create params[:name]
    redirect_to labels_path
  end
  def new
  end
end
