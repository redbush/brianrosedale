class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.page params[:page]
    session[:posts_page] = request.original_url
  end

  def show

  end

  def posts_redirect
    redirect_to session[:posts_page].present? ? session[:posts_page] : posts_path
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end
end
