class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  belongs_to :constituency

  validates_presence_of :name


	def central?
  self.role.name == "Central"
	end

	def regional?
  self.role.name == "Regional"
	end

end
