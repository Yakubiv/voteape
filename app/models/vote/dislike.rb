class Dislike < Vote
  before_create :update_dislikes

  private

  def update_dislikes
    post.update(dislikes_count: post.dislikes_count + 1)
  end
end
