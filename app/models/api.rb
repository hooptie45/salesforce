class Api

  def self.get(url)
    ACCESS_TOKEN.get("#{API}/#{url}").body
  end

  def self.classname
    self.name.gsub(/[^:]+::/,'').downcase
  end

  def self.all
    get "#{classname}"
  end

  def self.select(id)
    get "#{classname}/#{id}"
  end


  class Cases < Api
  end


  class Filters < Api
    def self.cases(id)
      get "#{classname}/#{id}/cases"
    end
    
  end


end
