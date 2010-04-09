module Bueda
  class Client
    include HTTParty
    base_uri = 'http://api.bueda.com'

    def initialize(api_key)
      self.class.default_params :api_key => api_key
    end
  end

  class Tags
    @@ATTRIBUTES = [:tags]
    attr_accessor *@@ATTRIBUTES

    def initialize(tags)
    end

    def enrich()
    end

    def get_categories()
    end

    def split()
    end

    def get_concepts()
    end
  end
  
  class EnrichedTag
    @@ATTRIBUTES = [:canonical, :categories, :concepts, :split]
    attr_accessor *@@ATTRIBUTES
  end

  class Category
    @@ATTRIBUTES = [:name, :confidence]
    attr_accessor *@@ATTRIBUTES
  end

  class SemanticConcept
    @@ATTRIBUTES = [:id, :name, :original, :types]
    attr_accessor *@@ATTRIBUTES
  end
end
