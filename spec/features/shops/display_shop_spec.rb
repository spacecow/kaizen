require 'rails_helper'

describe 'Display shop' do
  let(:maruzen){ create :shop, name:'Maruzen' }
  let(:gardens){ create :book, title:'Gardens of the Moon' }
  before do
    maruzen.books << gardens
    maruzen.books << gardens
    visit shop_path(maruzen)
  end
  subject{ page }
  it "list the books in the shop" do
    is_expected.to have_content 'Gardens of the Moon'
  end
end
