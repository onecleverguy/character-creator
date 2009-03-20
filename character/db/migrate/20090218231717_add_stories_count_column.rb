class AddStoriesCountColumn < ActiveRecord::Migration
  def self.up
    add_column :users, :stories_count, :integer
  end

  def self.down
    remove_column :users, :stories_count
  end
end
