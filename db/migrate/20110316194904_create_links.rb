class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :note_id
      t.integer :start_line
      t.integer :end_line

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
