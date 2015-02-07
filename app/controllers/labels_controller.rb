class LabelsController < ApplicationController
  def index
    @list = Api::Labels.all
  end
end
