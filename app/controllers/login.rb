get "/sessions/new" do
	erb :"/users/session"
end

post "/sessions" do
	@user = User.authenticate(params[:user][:email], params[:user][:password])
	if @user
		set_user(@user)
		redirect "/"
	else
		@errors = "Username/Password is incorrect."
		erb :"/sessions/new"
	end
end

delete "/sessions" do
	session.delete(:user_id)
	redirect "/"
end 
