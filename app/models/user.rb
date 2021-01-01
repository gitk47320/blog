class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
  validates :email, presence: true
  validates :login_id, presence: true
  validates :password, presence: true
end
