class VisitorsController < ApplicationController

  def index
    @posts = Post.order('created_at DESC').limit(1)
  end

  def resume
    @meta_title = "Data and AI leader and engineer"
  end

  def speak
    @meta_title = "Speaker on Data and AI"
  end

  def sandbox
  end
end
