class AddYoutubeCodeToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :youtube_code, :string
  end
end
