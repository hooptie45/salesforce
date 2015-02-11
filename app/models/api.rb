class Api
  # shared api methods
  def self.get(url)
    JSON.parse(ACCESS_TOKEN.get("#{API}/#{url}").body)['_embedded']['entries']
  end
 
  def self.post(url,body='')
    ACCESS_TOKEN.post "#{API}/#{url}",body
  end

  def self.patch(url,body='',headers={})
    headers['X-HTTP-Method-Override'] = 'PATCH'
    body.gsub!(/'/,'"')
    rsp = ACCESS_TOKEN.post "#{API}/#{url}",body,headers
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

  # labels api methods
  class Labels < Api

    def self.create(name)
      post classname,%Q{ {"name":"#{name}"} }
    end

  end

  # filters api methods
  class Filters < Api

    def self.cases(filter_id)
      get "#{classname}/#{filter_id}/cases"
    end
    
  end


end
