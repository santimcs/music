class Artist < ActiveRecord::Base
#  attr_accessible :band, :first_name, :image, :last_name
#	has_many :songs, dependent: :destroy
	#  validates :full_name, uniqueness: true
  default_scope {order('first_name ASC')}
  mount_uploader :image, ImageUploader
  # Getter
  def full_name
  	if band
		[last_name, first_name].join(' ')
	else
		[first_name, last_name].join(' ')
	end
  end

  # Setter
  def full_name=(name)
split = name.split(' ', 2)
self.first_name = split.first
self.last_name = split.last
 end

end
