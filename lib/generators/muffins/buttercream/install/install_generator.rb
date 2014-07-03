require 'rails/generators'

module Muffins
  module Buttercream
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        source_root File.join(__dir__, 'templates')
        desc 'This generator installs the Muffins Buttercream Theme to the Asset Pipeline'

        def adapt_stylesheet_application
          css_manifest = 'app/assets/stylesheets/application.css'

          if File.exist?(css_manifest)
            content = File.read(css_manifest)

            if content.match(/require_tree\s+\.\s*$/)
              # Nothing todo!
            else
              require_statement = " *= require buttercream_and_overrides\n"
              insert_into_file css_manifest, require_statement, after: "require muffins_and_overrides\n"
            end
          else
            copy_file 'application.css', 'app/assets/stylesheets/application.css'
          end
        end

        def add_buttercream_and_overrides_stylesheet
          copy_file 'buttercream_and_overrides.scss', 'app/assets/stylesheets/buttercream_and_overrides.scss'
        end
      end
    end
  end
end
