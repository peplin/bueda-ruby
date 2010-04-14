require 'httparty'

module Bueda
  class Client
    include HTTParty
    base_uri 'http://api.bueda.com'
    format :json

    def initialize(apikey)
      self.class.default_params :apikey => apikey
    end

    def version()
      self.class.get('/version')
    end

    def enriched(tags, options={})
      options.merge!(:query => {:tags => tags.join(',')})
      self.class.get('/enriched', options)['result']
    end

    def categories(tags, options={})
      options.merge!(:query => {:tags => tags.join(',')})
      self.class.get('/categories', options)['result']
    end

    def split(tags, options={})
      options.merge!({:tags => tags})
      self.class.get('/separated', options)['result']
    end

    def concepts(tags, options={})
      options.merge!({:tags => tags})
      self.class.get('/semantics', options)['result']
    end
  end
end
