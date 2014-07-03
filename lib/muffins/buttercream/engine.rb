require 'rails'
require 'sass-rails'

module Muffins
  module Buttercream
    class Engine < ::Rails::Engine
      initializer 'muffins-buttercream.load_config_initializers', after: 'setup_sass', group: :all do |app|
        app.config.sass.load_paths << config.root.join('vendor', 'assets')
      end
    end
  end
end
