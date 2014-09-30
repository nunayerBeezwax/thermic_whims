class Meme < ActiveRecord::Base

	has_and_belongs_to_many :fountains

	attr_accessible :fountain_ids, :text, :source_url

end