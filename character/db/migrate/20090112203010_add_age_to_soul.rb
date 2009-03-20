class AddAgeToSoul < ActiveRecord::Migration
  def self.up
    add_column :souls, :age, :string
  end

  def self.down
    remove_column :souls, :age
  end
end
