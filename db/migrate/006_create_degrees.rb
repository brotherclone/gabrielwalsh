class CreateDegrees < ActiveRecord::Migration[6.0]

  def self.up

    create_table :degrees do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    add_reference :degrees, :organization, index: true

  end

  def self.down

    remove_reference :degrees, :organization

    drop_table :degrees

  end

end
