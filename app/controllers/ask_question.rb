get '/posts/new' do

  erb :'/categories/posts/new'
end

post '/posts/new' do
  @post = Post.new(params[:post])
  if @post.save
    redirect "/categories/#{@post.category_id}/posts/#{@post.id}"
  else
  end
end
