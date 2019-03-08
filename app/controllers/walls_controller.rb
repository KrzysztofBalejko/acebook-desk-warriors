class WallsController < ApplicationController
  def index
    @walls = User.all.order("user_name")
  end

  def show
    @posts = Post.all.where(wall_user_id: params[:id]).order("updated_at DESC")
    session[:wall_user_id] = params[:id]
    @post = Post.new
  end
end
