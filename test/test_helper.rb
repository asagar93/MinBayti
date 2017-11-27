ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
	def setup
	  @user = User.new(fname: "tartan",lname: "hello", email: "hello@cmu.edu", password: "foobar12",
	  password_confirmation: "foobar12")
	end
  # Add more helper methods to be used by all tests here...
end
