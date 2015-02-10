class CasesController < ApplicationController
  def index
    @list = Api::Cases.all
  end
  def show
    @filter = Api::Cases.select(params[:id])
  end
  def update
    Api::Cases.replace params['case_id'], %Q{ {"label_action":"replace", "labels": [#{params['labels'].keys.join(',')}]} }
    redirect_to filter_cases_url params['filter_id']
  end
end
