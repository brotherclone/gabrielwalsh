class CreatePortfolioImageCallOuts < ActiveRecord::Migration[6.0]

  def self.up

    create_table :portfolio_image_call_outs do |t|
      t.integer :x
      t.integer :y
      t.string :title
      t.string :caption
      t.timestamps
    end

    add_reference :portfolio_image_call_outs, :portfolio_image, index: true

  end

  def self.down

    remove_reference :portfolio_image_call_outs, :portfolio_image

    drop_table :portfolio_image_call_outs

  end

end
