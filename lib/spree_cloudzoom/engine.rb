module SpreeCloudzoom
  class Engine < Rails::Engine
    isolate_namespace SpreeVariantOptions
    engine_name "spree_cloudzoom"

    config.to_prepare do
      #loads application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
  end
end