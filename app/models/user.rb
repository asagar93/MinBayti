class User < ActiveRecord::Base
  has_one :bussiness
  has_many :orders
  has_secure_password
  
  validates :fname, :lname,:password,:password_confirmation,  presence: true
  validates_format_of :fname, :lname, with: /\A[A-Z]{1}[a-z]+( +[a-zA-Z]+)*/

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                format: { with: VALID_EMAIL_REGEX },
                uniqueness: { case_sensitive: false }

	before_save { self.email = email.downcase }

  
  validates :password, length: { minimum: 6 }

end
