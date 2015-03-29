require 'rails_helper'

describe Copy do

  it "fkey constraints" do
    expect{Copy.create}.to raise_error
    expect{Copy.create book_id:1}.to raise_error
    expect{Copy.create shop_id:1}.to raise_error
    expect{Copy.create book_id:1, shop_id:1}.to(
      raise_error ActiveRecord::StatementInvalid)
    expect{Copy.create(
      book_id:create(:book).id,
      shop_id:create(:shop).id)}.not_to raise_error
  end

end
