require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module EdemDesign
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.autoload_paths += %W(#{config.root}/lib)
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
