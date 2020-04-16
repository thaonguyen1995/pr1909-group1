class RegistrationsController < Devise::RegistrationsController
  def create
    super
    update_resource
  end

  def update_resource
    user = User.find_by email: params[:user][:email]
    return unless user
<<<<<<< HEAD
<<<<<<< HEAD
    object = user.user_type.classify.constantize.new user_id: user.id
=======
    current_resource = user.user_type.camelize.constantize
    object = current_resource.new user_id: user.id
>>>>>>> fix as requirement 1
=======
    object = user.user_type.classify.constantize.new user_id: user.id
>>>>>>> fix as requirement 2
    object.save
  end
end
