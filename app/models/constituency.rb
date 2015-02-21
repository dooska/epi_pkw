class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :votes
  has_one :user
end
