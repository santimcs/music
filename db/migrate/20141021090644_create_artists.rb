class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
  t.string :first_name
  t.string :last_name
  t.boolean :band
  t.string :image

    end
  end
end
