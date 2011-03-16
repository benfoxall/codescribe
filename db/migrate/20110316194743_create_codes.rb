class CreateCodes < ActiveRecord::Migration
  def self.up
    create_table :codes do |t|
      t.text :src
      t.text :html
      t.string :lang
      t.string :hash
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :codes
  end
end
