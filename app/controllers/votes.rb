post '/categories/:category_id/posts/:post_id/votes' do
  Vote.create(params[:vote])

  redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
end

post '/categories/:category_id/posts/:post_id/comments/:comment_id/votes' do
  Vote.create(params[:vote])

  redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
end
