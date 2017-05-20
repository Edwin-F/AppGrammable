class UsersController < ApplicationController

  def show
    email = [params[:email], params[:format]].join(".")
    @user = User.find_by(email: email)
    puts params.inspect
    #raise params.inspect
    #@user = User.find_by_id(params[:id])
    return render_not_found if @user.blank?
  end

end
