class Profile < ApplicationRecord
  belongs_to :user
  VALID_HALFWIDTH_CHARACTERS = /\A[a-zA-Z0-9]+\z/
  validates :nickname, { presence: true, 
                         format: { with: VALID_HALFWIDTH_CHARACTERS }, 
                         uniqueness: { case_sensitive: false }
                       }
end
