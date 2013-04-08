class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.belongs_to :group
      t.belongs_to :show
      t.integer :episode_number
      t.string :file_name
      t.integer :file_size

      t.timestamps
    end

    add_index :releases, :group_id
    add_index :releases, :show_id
  end
end
