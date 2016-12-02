require_relative 'base'
require_relative '../sections/categories'

module Web
  module Pages
    class Home < Base
      set_url "/london"
      section :categories,  Web::Sections::Categories, ".navigation-categories-container"
    end
  end
end