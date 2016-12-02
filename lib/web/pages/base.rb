require "site_prism"
require "capybara"
require 'capybara/rspec'
require_relative '../sections/header'

module Web
  module Pages
    class Base < SitePrism::Page
      section :header, Web::Sections::Header, ".middle-nav-wrapper"
    end
  end
end
