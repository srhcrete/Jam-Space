class CreateReview < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :service, index: true
      t.belongs_to :band, index: true
      t.text :content
    end
  end
end
