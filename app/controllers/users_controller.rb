class UsersController < ApplicationController

  def show
    @user = User.find_by(email: params[:email])
    return render_not_found if @user.blank?
  end

end
