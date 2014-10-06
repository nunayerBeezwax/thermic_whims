class Work < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :fountains

	attr_accessible :tag_list, :fountain_ids, :text, :title, :link

end