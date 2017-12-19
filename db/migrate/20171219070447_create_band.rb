class CreateBand < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :location
      t.text :description
      t.text :members, array: true, default: [] 
    end
  end
end
