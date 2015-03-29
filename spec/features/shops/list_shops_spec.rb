require 'rails_helper'

describe 'List shops' do
  let(:maruzen){ create :shop, name:'Maruzen' }
  let(:abc){ create :shop, name:'ABC' }
  before do
    maruzen; abc
    visit shops_path
  end
  subject{ page }
  it "lists the shops" do
    is_expected.to have_content 'Maruzen'
    is_expected.to have_content 'ABC'
  end

  it "takes you to the clicked shop" do
    click_link 'Maruzen'
    expect(page.current_path).to eq shop_path(maruzen)
  end
end
