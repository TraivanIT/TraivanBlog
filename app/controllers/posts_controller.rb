class PostsController < ApplicationController
  def index
    @posts = Post.where(publish: true).order(id: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def about
  end

  def service
  end

  def contact
  end
end
