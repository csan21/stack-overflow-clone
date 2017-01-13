get '/profile/:user_id' do
  @user = User.find_by(id: params[:user_id])

  erb :'users/profile'
end
