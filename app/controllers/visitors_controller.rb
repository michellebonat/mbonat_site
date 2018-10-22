class VisitorsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC').limit(1)
  end

  def resume
    @meta_title = "Data and AI leader and engineer"
  end

  def sandbox
  end
end
