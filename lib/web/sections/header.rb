require_relative "base"

module Web
  module Sections
    class Header < Base
      element "account", ".navigation-main-user-link .navigation-main-user-label"
    end
  end
end