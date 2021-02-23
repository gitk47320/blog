class Post < ApplicationRecord
  belongs_to :user
  has_many   :comments
  validates  :title, presence: true, length: { maximum: 100 }
  validates  :post,  presence: true,  length: { maximum: 5000 }
end
