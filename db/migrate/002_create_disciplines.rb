class CreateDisciplines < ActiveRecord::Migration[6.0]
  def self.up
    create_table :disciplines do |t|
      t.string :name
      t.string :description
      t.string :icon
      t.timestamps
    end
  end

  def self.down

    drop_table :disciplines

  end

end
