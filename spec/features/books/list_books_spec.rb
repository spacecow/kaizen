require 'rails_helper'

describe "List books" do
  before do
    create :book, title:'Gardens of the Moon'
    create :book, title:'Deadhouse Gates'
    visit books_path
  end
  subject{ page }
  it do
    is_expected.to have_content 'Gardens of the Moon'
    is_expected.to have_content 'Deadhouse Gates'
  end
end
