get '/categories/:category_id/posts' do
  @posts = Post.all
  @category_id = params[:category_id]

  erb :'categories/posts/index'
end

get '/categories/:category_id/posts/new' do
  @post = Post.find_by(id: params[:post_id])
  @category = Category.find_by(id: params[:category_id])

  erb :'categories/posts/new'
end

get '/categories/:category_id/posts/:post_id' do
  @post = Post.find_by(id: params[:post_id])
  @category = Category.find_by(id: params[:category_id])
  @post.post_views += 1
  @post.save
  erb :'categories/posts/show'
end

post '/categories/:category_id/posts' do
  @post = Post.new(params[:post])
  @post.category_id = params[:category_id]
  @post.save

  redirect "/categories/#{@post.category_id}/posts"
end

put '/categories/:category_id/posts/:post_id' do
  @post = Post.find_by(id: params[:post_id])
  @post.title = params[:post][:title]
  @post.post_body = params[:post][:post_body]

  redirect "/categories/#{@post.category_id}/posts/#{@post.id}"
end

delete '/categories/:category_id/posts/:post_id' do
  @post = Post.find_by(id: params[:post_id])
  @post.destroy
  redirect "/"
end

get '/categories/:category_id/posts/:post_id/edit' do
  @post = Post.find_by(id: params[:post_id])
  @category = Category.find_by(id: params[:category_id])
  erb :'categories/posts/edit'
end
