require 'capybara/cucumber'
require_relative '../../lib/helpers/selenium_helper'


Given(/^I am on the signup page$/) do
  visit "/signup"
end