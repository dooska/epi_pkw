class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_one :constituency

  validates_presence_of :name
	before_save :assign_role

	def admin?
  self.role.name == "Unlog"
	end

	def central?
  self.role.name == "Central"
	end

	def regional?
  self.role.name == "Regional"
	end

	def assign_role
  	self.role = Role.find_by name: "Unlog" if self.role.nil?
	end
end