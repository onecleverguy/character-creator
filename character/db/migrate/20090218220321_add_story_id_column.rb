class AddStoryIdColumn < ActiveRecord::Migration
  def self.up
    add_column :souls, :story_id, :integer
  end

  def self.down
    remove_column :souls, :story_id
  end
end
