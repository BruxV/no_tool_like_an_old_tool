class CreateTools < ActiveRecord::Migration
  def self.up
    create_table :tools do |t|
      t.integer :category_id
      t.string :make
      t.string :model
      t.string :condition
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :tools
  end
end
