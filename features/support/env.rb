require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/rspec'
require 'site_prism'

# Capybara.current_driver = :selenium_chrome

require 'capybara/dsl'

# include Capybara::DSL


Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br/'
Capybara.run_server = false # don't start Rack