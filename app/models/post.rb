class Post < ApplicationRecord
  has_many :dislikes
  has_many :likes

  default_scope { order(created_at: :desc) }
end
