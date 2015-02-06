class FiltersController < ApplicationController
  def index
    @list = Api::Filters.all
  end
  def show
    @filter = Api::Filters.select(params[:id])
  end
  def cases
    @list = Api::Filters.cases(params[:id])
  end
end
