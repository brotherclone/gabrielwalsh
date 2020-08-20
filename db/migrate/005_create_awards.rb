class CreateAwards < ActiveRecord::Migration[6.0]
  def self.up

    create_table :awards do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    add_reference :awards, :organization, index: true

  end

  def self.down

    remove_reference :awards, :organization

    drop_table :awards

  end

end
