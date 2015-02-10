class CasesController < ApplicationController
  def show
    @case = Api::Cases.get params[:id]
  end
  def edit
    @case = Api::Cases.select params[:id]
  end
  def update
    #Api::Cases.replace params['case_id'], params['labels']
    Api::Cases.replace params['case_id'], %Q{ {"label_action":"replace", "labels": [#{params['labels'].keys.join(',')}]} }
    redirect_to filter_cases_url params['filter_id']
  end
end
