class LabelsController < ApplicationController
  def index
    @list = Api::Labels.all
  end
  def create
    Api::Labels.create params[:name]
    redirect_to labels_path
  end
  def new
  end
end
