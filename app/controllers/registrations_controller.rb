class RegistrationsController < Devise::RegistrationsController
  def create
    super
    update_resource
  end

  def update_resource
    user = User.find_by email: params[:user][:email]
    return unless user
    current_resource = user.user_type.camelize.constantize
    object = current_resource.new user_id: user.id
    object.save
  end
end
