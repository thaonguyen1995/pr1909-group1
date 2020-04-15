class RegistrationsController < Devise::RegistrationsController
  def create
    super
    update_resource
  end

  def update_resource
    user = User.find_by email: params[:user][:email]
    return if !user
    object = current_resource.new user_id: user[:id]
    object.save
  end

  def current_resource
    resource = params[:user][:user_type]
    resource.camelize.constantize
  end
end
