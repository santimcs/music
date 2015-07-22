class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
  t.integer :song_id
  t.text :content

      t.timestamps
    end
  end
end
