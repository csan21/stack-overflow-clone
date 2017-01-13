get "/users/new" do
  erb :"/users/new"
end

post "/users" do
  @user = User.new(username: params[:user][:username], password: params[:user][:password])
  if @user.valid?
    @user.save
    set_user(@user)
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :"/users/new"
  end
end
