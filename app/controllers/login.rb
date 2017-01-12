get "/sessions/new" do
	erb :"/users/session"
end 

post "/sessions" do
   @user = User.authenticate(params[:user][:email], params[:user][:password])
   if @user
    session[:user_id] = @user.id
    redirect "/"
   else
    @errors = @user.errors.full_messages
    erb :"/sessions/new"
   end
end
 