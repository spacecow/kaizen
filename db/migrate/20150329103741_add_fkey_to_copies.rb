class AddFkeyToCopies < ActiveRecord::Migration
  def change
    add_foreign_key :copies, :books
    add_foreign_key :copies, :shops
  end
end
