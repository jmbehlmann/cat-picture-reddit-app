class VotesController < ApplicationController
  # validates :user_id, uniqueness: { scope: :post_id, message: "only 1 vote per post" }

  def create
    @vote = Vote.new(
      user_id: current_user.id,
      post_id: params[:post_id],
      direction: params[:direction]
    )
    @vote.save
    render :show
  end

  def update
    @vote = Vote.find_by(id: params[:id])
    @vote.update(
      user_id: params[:user_id] || @vote.user_id,
      post_id: params[:post_id] || @vote.post_id,
      direction: params[:direction] || @vote.direction
    )
    render :show
  end


end
