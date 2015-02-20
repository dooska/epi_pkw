class Voivodeship < ActiveRecord::Base
	has_and_belongs_to_many :committee
	has_many :constituency
end
