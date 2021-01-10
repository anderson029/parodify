require "capybara"
require "capybara/cucumber"

require_relative "helpers"

World(HelpersMo)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
