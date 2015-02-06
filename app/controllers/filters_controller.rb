class FiltersController < ApplicationController
  def index
    @list = Api.filters
  end
  def show
    @filter = Api.filters(params[:id])
  end
end
