get "/sessions/new" do
  erb :"/users/session"
end

post "/sessions" do
  @user = User.find_by(username: params[:user][:username])
	@user.authenticate(params[:user][:username], params[:user][:password])
	if @user
		set_user(@user)
		erb :index
	else
		@errors = ["Username/Password is incorrect."]
		erb :"/sessions/new"
	end
end

delete "/sessions" do
	session.delete(:user_id)
	redirect "/"
end
