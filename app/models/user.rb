class User < ApplicationRecord
  has_secure_password

  has_many :jogs , :dependent => :delete_all
  has_many :api_tokens

  validates_presence_of :email
  validates_uniqueness_of :email

  enum user_type: ["regular", "user_manager", "administrator"]
end
