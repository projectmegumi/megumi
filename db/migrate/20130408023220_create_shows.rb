class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :alternate_name
      t.attachment :cover_image

      t.timestamps
    end
  end
end
