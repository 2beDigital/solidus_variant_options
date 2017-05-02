module SolidusVariantOptions
  class Engine < Rails::Engine
    isolate_namespace SolidusVariantOptions
    engine_name "solidus_variant_options"

    config.to_prepare do
      #loads application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    initializer "solidus_variant_options.environment", :before => :load_config_initializers do
      SolidusVariantOptions::VariantConfig = Spree::SolidusVariantOptionsSettings.new
    end
  end
end
