require 'json'

class FiltersController < ApplicationController
  def index
    @list = Api::Filters.all
  end
  def show
    @filter = Api::Filters.select(params[:id])
  end
  def cases
    @list = Api::Filters.cases(params[:filter_id])
  end
end
