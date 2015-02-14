class CasesController < ApplicationController
  def show
    @case = Api::Cases.get params[:id]
    respond_to do |format|
      format.html
      format.json { render json: @case }
    end
  end
  def edit
    @case = Api::Cases.select params[:id]
    respond_to do |format|
      format.html
      format.json { render json: @case }
    end
  end
  def update
    # handle the elimination of all labels
    labels = params['labels'] || {}
    # build the payload
    Api::Cases.replace params['id'], %Q{ {"label_action":"replace", "labels": [#{labels.keys.join(',')}]} }
    redirect_to filter_cases_url params['filter_id']
  end
end
