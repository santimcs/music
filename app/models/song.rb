class Song < ActiveRecord::Base
#  attr_accessible :artist_id, :genre_id, :length, :location, :name, :rank, :youtube_code, :released_date, :rating
  belongs_to :artist
  belongs_to :genre
  has_one :lyric
  default_scope {order('name ASC')}
  validates :name, presence: true
  validates :rank, uniqueness: true
  validates :length, numericality: true
	mount_uploader :location, LocationUploader
end
