require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara/rspec'
require 'site_prism'
require 'pry'

# Congiração ambiente prod e hml
ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

Capybara.app_host = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :selenium do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "--window-size=1420,835", "--incognito" ]})
    # Executar em modo headless sem interface gráfica
    # caps = Selenium::WebDriver::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "--windows-size=1420,835", "--incognito", "--headless" ]})
    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
    end
    
    client = Selenium::WebDriver::Remote::Http::Default.new
    options = { browser: :chrome, desired_capabilities: caps, http_client: client }
    Capybara::Selenium::Driver.new(app, options)
    # binding.pry
end

# Capybara.default_driver = :selenium_chrome
Capybara.default_driver = :selenium