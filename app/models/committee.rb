class Committee < ActiveRecord::Base
	has_and_belongs_to_many :voivodeship
	has_many :votes
end
