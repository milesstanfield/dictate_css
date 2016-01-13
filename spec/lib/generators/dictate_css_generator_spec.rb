require "spec_helper"
require "generator_spec"
require "generators/dictate_css_generator"

describe DictateCssGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)
  arguments %w(styles)

  before(:all) do
    prepare_destination
    run_generator
  end

  it "creates a css files" do
    assert_file "vendor/assets/stylesheets/dictate_css/base.css", File.read("app/assets/stylesheets/dictate_css/base.css")
    assert_file "vendor/assets/stylesheets/dictate_css/colors.css", File.read("app/assets/stylesheets/dictate_css/colors.css")
    assert_file "vendor/assets/stylesheets/dictate_css/floating.css", File.read("app/assets/stylesheets/dictate_css/floating.css")
    assert_file "vendor/assets/stylesheets/dictate_css/hide_show.css", File.read("app/assets/stylesheets/dictate_css/hide_show.css")
  end
end
