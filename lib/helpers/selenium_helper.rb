require 'capybara/rspec'
require 'rspec'
require 'selenium-webdriver'
require 'capybara/poltergeist'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = "https://next.farmdrop.com"
end

Capybara.register_driver :selenium do |app|
  browser = (ENV['browser'] || 'chrome').to_sym
  puts "Starting #{browser}"
  Capybara::Selenium::Driver.new(app, :browser => browser)
end
