class CreatePortfolioImages < ActiveRecord::Migration[6.0]

  def self.up

    create_table :portfolio_images do |t|
      t.string :image_url
      t.string :description
      t.timestamps
    end

    add_reference :portfolio_images, :project, index: true

  end

  def self.down

    remove_reference :portfolio_images, :project

    drop_table :portfolio_images

  end

end
