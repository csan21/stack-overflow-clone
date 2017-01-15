get '/' do
  @posts = Post.all.reverse
  @current_lang = "Language"
  erb :index, layout: :layout_update
end

post '/' do
  @posts = Post.all.reverse
  erb :'_index_live', layout: false
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
