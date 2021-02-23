class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, { presence: true, 
                      format: { with: VALID_EMAIL_REGEX }, 
                      uniqueness: { case_sensitive: false }
                    }
  VALID_HALFWIDTH_CHARACTERS = /\A[a-zA-Z0-9]+\z/
  validates :login_id, {presence: true, 
                        format: { with: VALID_HALFWIDTH_CHARACTERS }, 
                        uniqueness: { case_sensitive: false }
                       }
  validates :password, { presence: true, 
                         format: { with: VALID_HALFWIDTH_CHARACTERS } 
                       }
end
