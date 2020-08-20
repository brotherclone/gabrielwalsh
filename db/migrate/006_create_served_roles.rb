class CreateServedRoles < ActiveRecord::Migration[6.0]
  def self.up

    create_table :served_roles do |t|
      t.string :name
      t.string :description
      t.string :icon
      t.timestamps
    end

    add_reference :served_roles, :project, index: true
    add_reference :served_roles, :skill, index: true

  end

  def self.down

    remove_reference :served_roles, :project
    remove_reference :served_roles, :skill

    drop_table :served_roles

  end
end
