class PostsController < ApplicationController

  def index
    render json: {message: "in index"}
  end

  def show
    render json: {message: "in show"}
  end

end
