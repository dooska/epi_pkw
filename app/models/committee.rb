class Committee < ActiveRecord::Base
	has_and_belongs_to_many :voivodeships
	has_many :votes

	validates :name, :presence => true
	validates :name, :length => { :minimum => 2 }


	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
end
