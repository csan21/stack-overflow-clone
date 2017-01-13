get '/test' do
  @post = Post.all.first
  @comment = @post.comments[0]
  erb :'test'
end

post '/test/votes' do
  Vote.create(params[:vote])

  redirect "/test"
end

post '/test/comments/votes' do
  Vote.create(params[:vote])

  redirect "/test"
end
