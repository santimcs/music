class AddWebsiteToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :website, :boolean, default: false
  end
end
