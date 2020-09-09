class TheatersController < ApplicationController

  def  index
    
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new
    if @theater.valid?
      @theater.save
      redirect_to root_path
    end
  end


  private

  def theater_params
    params.require(:theater).pemit(:image, :name, :prefecture, :city, :company, :parking, :smorkingroom, :babyroom, :access, :remark)
  end

  
end
