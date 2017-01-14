post '/categories/:category_id/posts/:post_id/votes' do
  @post = Post.find_by(id: params[:post_id])
  Vote.create(params[:vote])
  if request.xhr?
    p "hitting if"
    return "<h3>#{(@post.votes.where(upvote?: true).count - @post.votes.where(upvote?: false).count).to_s}</h3>"
  else
    p "hitting else"
    redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
  end
end

post '/categories/:category_id/posts/:post_id/comments/:comment_id/votes' do
  Vote.create(params[:vote])

  redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
end

post '/login' do
  redirect "/sessions/new"
end
