def d(var)
  raise var.inspect.split(', ').join(", \n")
end

module Bhf
  require 'engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
  require 'bhf/active_record'
  require 'bhf/lists'
  require 'bhf/settings'
  require 'bhf/form'
end