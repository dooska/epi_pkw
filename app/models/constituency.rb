class Constituency < ActiveRecord::Base
  belongs_to :voivodeship
  has_many :votes
  has_one :user

  validates :name, presence: true, uniqueness: true
  
end
