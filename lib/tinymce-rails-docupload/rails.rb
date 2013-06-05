module Tinymce
  module Rails
    module Docupload
      class Engine < ::Rails::Engine
        initializer 'TinymceRailsDocupload.assets_pipeline' do |app|
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/editor_plugin.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/en.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/en_dlg.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/nb.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/nb_dlg.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/pt.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/pt_dlg.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/ru.js"
          app.config.assets.precompile << "tinymce/plugins/uploaddoc/langs/ru_dlg.js"
        end
      end
    end
  end
end