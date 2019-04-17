#==================================================================================================#
# 
# GET USER SERVICE
# 
#
# => User_key can be user_id or user_email
#==================================================================================================#

class User::Get

#=== ATTRIBUTES ===#

  attr_accessor :user_key, :user

#=== METHODS ===#

  def initialize(user_key)
    @user_key = user_key
  end

  def perform
    @user = User.find(@user_key) rescue nil
  end
end
