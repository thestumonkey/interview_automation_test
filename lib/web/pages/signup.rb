require_relative 'base'

module Web
  module Pages
    class Signup < Base
      set_url "/signup"
      element :email_field, :id, "email"
      element :password_field, :id, "password"
      element :postcode_field, :id, "zipcode"
      element :signup_button, :id, "email-signup-form-submit"
      element :error, ".fd-alert div"



      def login(email, password, postcode)
        # add timestamp to avoid account already existing. would expect to clear DB IRL
        email += Random.rand(100000).to_s unless email == ""
        email_field.set email
        password_field.set password
        postcode_field.set postcode
        signup_button.click
      end
    end
  end
end