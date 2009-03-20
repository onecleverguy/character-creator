class CreateSouls < ActiveRecord::Migration
  def self.up
    create_table :souls do |t|
      t.string :name
      t.string :gender
      t.string :career
      t.text :physical
      t.string :physical_image_url
      t.text :style
      t.text :personality_type
      t.text :quirks1
      t.text :quirks2
      t.text :quirks3
      t.text :backstory

      t.timestamps
    end
  end

  def self.down
    drop_table :souls
  end
end
