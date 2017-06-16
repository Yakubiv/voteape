class Like < Vote
  before_create :update_likes

  private

  def update_likes
    post.update(likes_count: post.likes_count + 1)
  end
end
