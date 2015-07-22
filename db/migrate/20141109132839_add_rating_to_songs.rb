class AddRatingToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :rating, :integer, :default => 0
  end
end
