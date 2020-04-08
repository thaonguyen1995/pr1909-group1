class SessionsController < Devise::SessionsController
  def create
    @user = User.find_by email: params[:user][:email]
    if @user.nil? || @user.confirmed_at.nil?
      render 'new'
    elsif @user.user_type == "candidate"
      sign_in @user
      redirect_to :candidates
    elsif @user.user_type == "employer"
      sign_in @user
      redirect_to :employers
    end
  end
end
