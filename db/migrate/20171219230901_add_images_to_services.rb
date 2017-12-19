class AddImagesToServices < ActiveRecord::Migration[5.1]
  def up
    add_attachment :services, :image
  end

  def down
    remove_attachment :services, :image
  end
end
