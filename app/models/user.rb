class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
def after_sign_in_path_for(resource)‘/guides’
end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
