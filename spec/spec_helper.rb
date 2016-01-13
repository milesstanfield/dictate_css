$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require 'dictate_css'
require "spec_helper"
require "capybara"
require "capybara-webkit"

Capybara.javascript_driver = :webkit
Capybara.current_driver = :webkit
Capybara.ignore_hidden_elements = true

RSpec.configure do |config|
  include Capybara::DSL
end
