class CasesController < ApplicationController
  def filtered
    @list = Api::Cases.filter(params[:id])
  end
  def show
    @filter = Api::Cases.select(params[:id])
  end
end
