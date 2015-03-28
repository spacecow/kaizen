require 'rails_helper'

describe Authorship do

  it "fkey constraints" do
    expect{Authorship.create}.to raise_error
    expect{Authorship.create book_id:1}.to raise_error
    expect{Authorship.create author_id:1}.to raise_error
    expect{Authorship.create book_id:1, author_id:1}.to(
      raise_error ActiveRecord::StatementInvalid)
    expect{Authorship.create book_id:create(:book), author_id:create(:author)}.to(
      raise_error ActiveRecord::StatementInvalid)
  end

end
