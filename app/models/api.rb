class Api
  def self.cases
    ACCESS_TOKEN.get("#{API}/cases").body
  end
  def self.filters(id = nil)
    if id
      return ACCESS_TOKEN.get("#{API}/filters/#{id}").body
    end
    ACCESS_TOKEN.get("#{API}/filters").body
  end
end
