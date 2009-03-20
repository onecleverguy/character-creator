class RenameStoryIdColumn < ActiveRecord::Migration
  def self.up
    rename_column :souls, :story_id, :user_id
  end

  def self.down
    rename_column :souls, :user_id, :story_id
  end
end
