post '/categories/:category_id/posts/:post_id/votes' do
  @post = Post.find_by(id: params[:post_id])
  @vote = Vote.new(params[:vote])
  @inverse_vote = Vote.find_by(votable_id: @vote.votable_id, votable_type: @vote.votable_type, voter_id: @vote.voter_id, upvote?: !@vote.upvote?)

  if @vote.save && @inverse_vote
    @inverse_vote.destroy
  end

  if request.xhr?
    return "<h3>#{(@post.votes.where(upvote?: true).count - @post.votes.where(upvote?: false).count).to_s}</h3>"
  else
    redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
  end
end

post '/categories/:category_id/posts/:post_id/comments/:comment_id/votes' do
  @comment = Comment.find_by(id: params[:comment_id])
  @vote = Vote.new(params[:vote])
  @inverse_vote = Vote.find_by(votable_id: @vote.votable_id, votable_type: @vote.votable_type, voter_id: @vote.voter_id, upvote?: !@vote.upvote?)


  if @vote.save && @inverse_vote
    @inverse_vote.destroy
  end

  if request.xhr?
    return "<h4>#{(@comment.votes.where(upvote?: true).count - @comment.votes.where(upvote?: false).count).to_s}</h4>"
  else
    redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
  end
end

post '/login' do
  redirect "/sessions/new"
end
