class CreateSkills < ActiveRecord::Migration[6.0]

  def self.up

    create_table :skills do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    add_reference :skills, :discipline, index: true

  end

  def self.down

    remove_reference :skills, :discipline

    drop_table :skills

  end

end
