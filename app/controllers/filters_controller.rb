class FiltersController < ApplicationController
  def index
    @list = Api::Filters.all
    respond_to do |format|
      format.html
      format.json { render json: @list }
    end
  end
  def cases
    @cases = Api::Filters.cases(params[:filter_id])
    @labels = Api::Labels.all
    respond_to do |format|
      format.html
      format.json { render json: @cases }
    end
  end
end
