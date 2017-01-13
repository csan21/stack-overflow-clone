get '/' do
  @posts = Post.all.reverse
  @current_lang = "Language"
  erb :index
end

post '/categories' do
  if params[:id] == "all"
    @posts = Post.all.reverse
  else
    @posts = Post.where(category_id: params[:id])
  end
  @current_lang = params[:language]
  erb :index, layout: false
end
