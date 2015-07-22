class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|

  t.integer :rank
  t.string :name
  t.integer :artist_id
  t.integer :length
  t.string :location

    end
  end
end
