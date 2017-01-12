get '/posts/:post_id/comments/new' do
  @post - Post.find_by(params[:post_id])
  erb :'/posts/#{@post.id}'
end

post '/posts/:post_id/comments' do
  @post = Post.find_by(params[:post_id])
  @comment = Comment.new(params[:comment])
  if @comment.save
    if request.xhr?
      erb :_comments
    end
  else
    @errors = @comment.errors.full_messages
    redirect '/posts/#{@post.id}'
end

put '/posts/:post_id/comments/:comment_id' do
  @post = Post.find_by(params[:post_id])
  @comment = Comment.find_by(params[:comment_id])
  if request.xhr?
    @comment.update_attributes(params[:comment])
    erb :_comments
  else
    @errors = @comment.errors.full_messages
    redirect '/posts/#{@post.id}/comments/#{@comment.id}'
  end
end

delete '/posts/:post_id/comments/:comment_id' do
  @post = Post.find_by(params[:post_id])
  @comment = Comment.find_by(params[:comment_id])
  if request.xhr?
    @comment.destroy
    erb :_comments
  else
    redirect '/posts/#{@post.id}/comments/#{@comment.id}'
  end
end
