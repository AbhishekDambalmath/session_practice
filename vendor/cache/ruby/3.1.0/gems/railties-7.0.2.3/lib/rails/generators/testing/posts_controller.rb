def search
    @posts = Post.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end