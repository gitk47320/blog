class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_one :user_profile, dependent: :destroy
end
