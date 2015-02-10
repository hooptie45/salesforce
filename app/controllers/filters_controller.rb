class FiltersController < ApplicationController
  def index
    @list = Api::Filters.all
  end
  def show
    @filter = Api::Filters.select(params[:id])
  end
  def cases
    @cases = Api::Filters.cases(params[:filter_id])
    @labels = Api::Labels.all
  end
end
