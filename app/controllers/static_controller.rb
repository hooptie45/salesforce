class StaticController < ActionController::Base
  def default
  end
  def api
    @thing = ACCESS_TOKEN.get("#{API}/cases").body
  end
end

