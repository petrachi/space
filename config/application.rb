require File.expand_path('../boot', __FILE__)

%w(
  action_controller
  action_view
  sprockets
).each do |framework|
  require "#{framework}/railtie"
end


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Space
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')

    RKit.load :css, :grid, :utility
  end
end
