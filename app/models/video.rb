class Video < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :fountains
	has_and_belongs_to_many :memes

	attr_accessible :tag_list, :fountain_ids, :meme_ids, :url, :title

	def construct_embed_url
		#eventually I want custom styling, this code removes youtube default
		#for now commented out so people know what videos are
		"http://" + self.url # + "?hd=1&rel=0&autohide=1&showinfo=0"
	end

	def fountains_enum
		all_fountains = {}
		Fountain.all.each_with_index do |f, i|
			all_fountains[i+1] = f
		end
		all_fountains.map{|key, val| [val.name, key]}
	end

  rails_admin do 
    list do 
      field :title
      field :url
    end

    edit do
      field :title
      field :url
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