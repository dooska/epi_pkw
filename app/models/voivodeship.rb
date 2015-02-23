class Voivodeship < ActiveRecord::Base
	has_and_belongs_to_many :committees
	has_many :constituencies

	validates :name, presence: true, uniqueness: true
  validates :name, :length => { :minimum => 4 }
  
end
