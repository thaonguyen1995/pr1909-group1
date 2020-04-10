class SessionsController < Devise::SessionsController
  def create
    @user = User.find_by email: params[:user][:email]
    redirect_to :new_user_session if @user.nil?
    sign_in @user
    redirect_to @user.user_type.to_sym
  end
end
