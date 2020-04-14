module RegistrationsHelper
  def self.u_type
    u_type = User.user_types.select{|k,v| v != 3}.keys
  end
end
