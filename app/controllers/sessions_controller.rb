class SessionsController < Devise::SessionsController
  def create
    @user = User.find_by email: params[:user][:email]
    if @user && @user.confirmed?
      sign_in @user
      byebug
      redirect_to @user.user_type
    else
      redirect_to :new_user_session
    end
  end
end
