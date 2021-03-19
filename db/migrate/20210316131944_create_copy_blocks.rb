class CreateCopyBlocks < ActiveRecord::Migration[6.1]
  def self.up
    create_table :copy_blocks do |t|
      t.text :text
      t.timestamps
    end
  end

  def self.down
    drop_table :copy_blocks
  end

end
