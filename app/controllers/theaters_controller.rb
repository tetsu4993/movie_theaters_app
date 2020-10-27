class TheatersController < ApplicationController

  def  index
    @theater = Theater.order("created_at DESC")
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)
    if @theater.valid?
      @theater.save
      redirect_to root_path
    end
  end

  def upload
    @theater = Theater.new(theater_params)
  end

  def show
    @theater = Theater.find(params[:id])
    @comment = Comment.new
    @comments = @theater.comments.includes(:user)
  end

  private

  def theater_params
    params.require(:theater).permit(:image, :name, :prefecture_id, :city, :company_id, :parking_id, :smorkingroom_id, :babyroom_id, :access, :remark).merge(user_id: current_user.id)
  end

  
end
