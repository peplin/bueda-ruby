module Bueda
  class Client
    include HTTParty
    base_uri = 'http://api.bueda.com'
    format :json

    def initialize(api_key)
      self.class.default_params :api_key => api_key
    end

    def version()
      self.class.get('/version')
    end
  end

  class Tags < Client
    @@ATTRIBUTES = [:tags]
    attr_accessor *@@ATTRIBUTES

    def initialize(tags)
      self.class.default_prams :tags => tags
    end

    def enrich(options={})
      self.class.get('/enriched', options)
    end

    def categories()
      self.class.get('/categories', options)
    end

    def split()
      self.class.get('/split', options)
    end

    def concepts()
      self.class.get('/semantics', options)
    end
  end
  
  class EnrichedTag < Client
    @@ATTRIBUTES = [:canonical, :categories, :concepts, :split]
    attr_accessor *@@ATTRIBUTES
  end

  class Category < Client
    @@ATTRIBUTES = [:name, :confidence]
    attr_accessor *@@ATTRIBUTES
  end

  class SemanticConcept < Client
    @@ATTRIBUTES = [:id, :name, :original, :types]
    attr_accessor *@@ATTRIBUTES
  end
end
