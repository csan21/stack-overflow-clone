get "/users/new" do
  erb :"/users/new"
end

post "/users" do
  @user = User.new(params[:users])
  if @user.valid?
    @user.save
    set_user(@user)
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :"/user/new"
  end
end
