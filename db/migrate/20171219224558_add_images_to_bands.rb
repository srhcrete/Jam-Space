class AddImagesToBands < ActiveRecord::Migration[5.1]
  def up
    add_attachment :bands, :photo
  end

  def down
    remove_attachment :bands, :photo
  end
end
