class CreateService < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.datetime :available_from
      t.datetime :available_to
      t.timestamps
    end
  end
end
