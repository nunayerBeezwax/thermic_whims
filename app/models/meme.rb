class Meme < ActiveRecord::Base

	acts_as_taggable

	validates_presence_of :fountain_ids, :text

	has_and_belongs_to_many :fountains
	has_and_belongs_to_many :videos
	has_and_belongs_to_many :tags
	has_many :meme_comments

	attr_accessible :tag_list, :fountain_ids, :fountains, :tag_ids, :video_ids, :meme_comment_ids, :text, :source_url, :tag_ids

	def fountains_enum
		all_fountains = {}
		Fountain.all.each_with_index do |f, i|
			all_fountains[i+1] = f
		end
		all_fountains.map{|key, val| [val.name, key]}
	end


  rails_admin do 
    list do 
      field :text
      field :tag_list
    end

    edit do
      field :text
      field :source_url
      field :fountain_ids, :enum do
      	label "Fountain"
      	enum_method do 
      	  :fountains_enum
      	end
      end
      field :tag_list do
      	label "Tags"
        html_attributes do
          {:style => "width:90%"}
        end
      end
    end
  end
end