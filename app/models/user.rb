class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   #find the user by ID and Email
  def self.find(user_key)
    if user_key.to_s.include? '@'
      return User.find_by(email: user_key)
    else
      return super user_key
    end
  end
  
end
