module Bueda
  VERSION = "0.1".freeze
end

def require_local(suffix)
  require(File.expand_path(File.join(File.dirname(__FILE__), suffix)))
end

# External requires
require('httparty')

require_local('bueda/client')
