helpers do
  def ajaxornah
    if request.xhr?
      return "<h4>hello</h4>"
    else
      redirect "/categories/#{params[:category_id]}/posts/#{params[:post_id]}"
    end
  end
end
