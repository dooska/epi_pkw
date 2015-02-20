class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :votes
  belongs_to :user
end
