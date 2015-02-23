class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  belongs_to :constituency

  validates_presence_of :name


def central?
  return false if self.role.blank?
    self.role.name == "Central"
end

def regional?
  return false if self.role.blank?
    self.role.name == "Regional"
end

end
