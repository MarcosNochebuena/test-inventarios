class User < ApplicationRecord
  #before_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  # enum role: [:user, :admin]
  validates :name, presence: true
  has_many :sales
  
  # private

#  def set_default_role
#     self.role = "user"
#   end
  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
