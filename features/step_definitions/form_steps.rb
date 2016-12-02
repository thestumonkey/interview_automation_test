require 'capybara/cucumber'
require 'site_prism'
require_relative '../../lib/web/pages/signup'
require_relative '../../lib/helpers/selenium_helper'

When(/^I enter (.*), (.*) and (.*)/) do |email, password, postcode|
  @signup_page = Web::Pages::Signup.new
  @signup_page.login(email, password, postcode)
end
