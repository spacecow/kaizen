class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.integer :book_id, null:false
      t.integer :shop_id, null:false
      t.timestamps
    end
  end
end
