class CreateAuthorship < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :book_id, null:false
      t.integer :author_id, null:false
    end
  end
end
