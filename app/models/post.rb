class Post < ApplicationRecord
  has_many :dislikes
  has_many :likes
end
