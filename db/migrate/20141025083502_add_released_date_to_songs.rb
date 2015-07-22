class AddReleasedDateToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :released_date, :date
  end
end
