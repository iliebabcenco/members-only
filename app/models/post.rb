class Post < ApplicationRecord
  belongs_to :member

  validates :title, presence: true, length: { minimum: 6 }
  validates :body, presence: true, length: { minimum: 15 }
end
