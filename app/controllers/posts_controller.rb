class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def create
    @post = Post.new(
      title: params[:title],
      image: params[:image],
      user_id: params[:user_id]
    )
    @post.save
    render :show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: {message: "you destroyed it"}
  end
end
