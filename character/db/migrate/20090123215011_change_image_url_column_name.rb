class ChangeImageUrlColumnName < ActiveRecord::Migration
  def self.up
    rename_column :souls, :physical_image_url, :visual_guide
  end

  def self.down
    rename_column :souls, :visual_guide, :physical_image_url
  end
end
