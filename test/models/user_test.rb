require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  
	test "user fields should not be empty" do
		c = User.new
		assert c.invalid?
		assert c.errors[:fname].any?
		assert c.errors[:lname].any?

	end



  test "firstname should be present" do
    @user.fname = ""
    assert_not @user.valid?
  end
  test "firstname should not be too long" do
    @user.fname = "a" * 51
    assert_not @user.valid?
  end

  test "lastname should be present" do
    @user.lname = ""
    assert_not @user.valid?
  end
  test "lastname should not be too long" do
    @user.lname = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@cmu.edu"
  end


  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
      first.last@foo.jp]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  test "email validation should reject invalid addresses" do
     invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
     foo@bar_baz.com foo@bar+baz.com]
     invalid_addresses.each do |invalid_address|
       @user.email = invalid_address
       assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
     end
  end
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end



  
  # test "the truth" do
  #   assert true
  # end
end
