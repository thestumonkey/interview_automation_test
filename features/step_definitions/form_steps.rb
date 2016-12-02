require 'capybara/cucumber'
require 'site_prism'
require_relative '../../lib/web/pages/signup'
require_relative '../../lib/helpers/selenium_helper'

When(/^I enter stu@theawesome\.co\.uk, (\d+) and N(\d+) (\d+)JN$/) do |email, password, postcode|
  @signup_page = Web::Pages::Signup.new
  # @signup_page.email_field.set email
  # @signup_page.password_field.set password
  # @signup_page.postcode_field.set postcode
  @signup_page.login(email, password, postcode)
end
