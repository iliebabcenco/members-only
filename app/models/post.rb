class Post < ApplicationRecord
  belongs_to :member

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 5 }
end
