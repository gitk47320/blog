class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
end
