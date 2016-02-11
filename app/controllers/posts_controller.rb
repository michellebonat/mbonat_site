class PostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show ]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

# This is not working or finished yet
  def edit
    @post = Post.edit(post_params)
    @post.save

    redirect_to @post
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
    end
  end
end
