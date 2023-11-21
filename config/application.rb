require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Exmachina
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Error: --> Psych::DisallowedClass: Tried to load unspecified class: Symbol
    config.active_record.use_yaml_unsafe_load = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "America/Montevideo"
    # config.eager_load_paths << Rails.root.join("extras")

    config.to_prepare do    
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
  end
end
