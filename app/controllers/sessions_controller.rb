class SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    @user = User.find_by email: params[:user][:email]
    if @user.nil?
      render 'new'
    elsif @user.user_type == "candidate"
      redirect_to :candidates
    elsif @user.user_type == "employer"
      redirect_to :employers
    end
  end
end
