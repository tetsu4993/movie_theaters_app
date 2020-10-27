class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

private

def user_params
  params.require(:user).permit(:nickname, :birthday, :favoriteactor, :favoritemovie, :moviesee_id, :pamphlet_id)
end

end
