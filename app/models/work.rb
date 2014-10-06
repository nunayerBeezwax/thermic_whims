class Work < ActiveRecord::Base

	has_and_belongs_to_many :fountains

	attr_accessible :fountain_ids, :text, :title, :link

end