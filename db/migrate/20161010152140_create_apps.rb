class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :image_irl
      t.string :developer
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.decimal :ranting, precision: 8, scale: 2

      t.timestamps
    end
  end
end
