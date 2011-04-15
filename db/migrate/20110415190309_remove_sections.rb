class RemoveSections < ActiveRecord::Migration
  def self.up
    drop_table :sections
    remove_column :events, :section_id
    add_column :events, :region_id, :integer
    add_index :events, :region_id
    add_column :events, :category, :string
  end

  def self.down
    remove_column :events, :category
    remove_index :events, :region_id
    remove_column :events, :region_id
    add_column :events, :section_id, :integer
  end
end