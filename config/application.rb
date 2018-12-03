require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module CARdnd
  class Application < Rails::Application
    config.load_defaults 5.2

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.system_tests false
    end
  end
end
