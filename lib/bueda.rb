require('rubygems')

module Bueda; end

def require_local(suffix)
  require(File.expand_path(File.join(File.dirname(__FILE__), suffix)))
end

# External requires
require('json')
require('httparty')

require_local('bueda/ext')
require_local('bueda/version')
require_local('bueda/meta')
require_local('bueda/core')
require_local('bueda/model')
require_local('bueda/config')
require_local('bueda/client')
require_local('bueda/console')
