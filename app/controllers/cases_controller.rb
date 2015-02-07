class CasesController < ApplicationController
  def index
    @list = Api::Cases.all
  end
  def filtered
    @list = Api::Cases.filter(params[:id])
  end
  def show
    @filter = Api::Cases.select(params[:id])
  end
end
