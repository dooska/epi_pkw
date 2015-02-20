class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :votes
end
