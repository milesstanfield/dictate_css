class DictateCssGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../app/assets/stylesheets/dictate_css', __FILE__)
  argument :arg, type: :string

  def copy_variables_file
    if arg == "styles"
      system `mkdir -p vendor/assets/stylesheets/dictate_css`
      copy_file "base.css", "vendor/assets/stylesheets/dictate_css/base.css"
      copy_file "colors.css", "vendor/assets/stylesheets/dictate_css/colors.css"
      copy_file "floating.css", "vendor/assets/stylesheets/dictate_css/floating.css"
      copy_file "hide_show.css", "vendor/assets/stylesheets/dictate_css/hide_show.css"
    end
  end
end
