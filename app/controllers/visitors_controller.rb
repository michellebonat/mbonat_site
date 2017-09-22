class VisitorsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC').limit(1)
  end

  def resume
    @meta_title = "Software engineer full stack ruby rails Michelle Bonat"
  end

  def sandbox
  end
end
