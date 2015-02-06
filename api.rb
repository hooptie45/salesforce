class Api
  def self.cases
    ACCESS_TOKEN.get("#{API}/cases").body
  end
end
