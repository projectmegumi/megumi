class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.belongs_to :release
      t.integer :time
      t.attachment :image

      t.timestamps
    end
    add_index :screenshots, :release_id
  end
end
