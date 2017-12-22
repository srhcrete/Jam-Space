class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :username
      t.string :name
      t.integer :age
      t.string :location
      t.text :description
      t.string :email,              null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :password_salt

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true

  end
end
