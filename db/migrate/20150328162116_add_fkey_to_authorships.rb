class AddFkeyToAuthorships < ActiveRecord::Migration
  def change
    add_foreign_key :authorships, :books
    add_foreign_key :authorships, :authors
  end
end
