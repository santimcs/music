class Lyric < ActiveRecord::Base
#  attr_accessible :content, :song_id
   belongs_to :song
  default_scope {order('id ASC')}

end
