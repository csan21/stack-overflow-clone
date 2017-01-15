get '/profile/:user_id' do
  @user = User.find_by(id: params[:user_id])
  @posts = Post.where(author_id: params[:user_id])
  @comments = Comment.where(commenter_id: params[:user_id])
  @totalvotes = Vote.where(voter_id: 1).count
  @totalupvotes = Vote.where(voter_id: params[:user_id], upvote?: true).count
  @totaldownvotes = Vote.where(voter_id: params[:user_id], upvote?: false).count
  if request.xhr?
    erb :'users/profile', layout: false
  else
    @user.profile_views += 1
    @user.save
    erb :'users/profile'
  end
end

get '/profile/:user_id/activity' do
  @user = User.find_by(id: params[:user_id])
  @posts = Post.where(author_id: params[:user_id])
  if request.xhr?
    erb :'users/activity', layout: false
  else
    erb :'users/activity'
  end
end
