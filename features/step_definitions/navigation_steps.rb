require 'capybara/cucumber'
require 'site_prism'
require_relative '../../lib/web/pages/signup'
require_relative '../../lib/helpers/selenium_helper'


Given(/^I am on the signup page$/) do
  @signup_page = Web::Pages::Signup.new
  @signup_page.load
end

Then(/^I see Homepage$/) do
  expect
end