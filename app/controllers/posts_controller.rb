class PostsController < ApplicationController

  before_filter :authenticate, :except => [ :index, :show ]

  def index
    @meta_title = "Blog about full stack ruby rails programming, startups, and fintech"
    @posts = Post.all.order('created_at DESC')
  end

  def new
  end

  def show
    @meta_title = "Blog post on full stack ruby rails web software development, startups, and fintech"
    @post = Post.friendly.find(params[:id])
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
      params.require(:post).permit(:title, :body, :created_at, :updated_at, :meta_title, :meta_description, :permalink, :no_index)
    end

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "welcome"
    end
  end
end
