require_relative 'base'

module Web
  module Pages
    class Signup < Base
      set_url "/signup"
      element :email_field, :id, "email"
      element :password_field, :id, "password"
      element :postcode_field, :id, "zipcode"
      element :signup_button, :id, "email-signup-form-submit"

      def login(email, password, postcode)
        email_field.set email
        password_field.set password
        postcode_field.set postcode
        signup_button.click
      end
    end
  end
end