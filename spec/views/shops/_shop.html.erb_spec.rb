require 'rspec/its'
require 'capybara'

class ErbBinding
  def initialize hash
    hash.each do |key,val|
      singleton_class.send(:define_method,key){ val }
    end
  end 
  def link_to s, shop
    "<a href=\"/shops/#{shop.id}\">#{s}</a>"
  end
  def get_bindings; binding end
end

describe 'shops/_shop.html.erb' do

  let(:filename){ File.expand_path '../../../../app/views/shops/_shop.html.erb', __FILE__ }
  let(:file){ File.read filename }
  let(:erb){ ERB.new file }
  let(:locals){{ shop:shop }}
  let(:ebinding){ ErbBinding.new locals }
  let(:local_bindings){ ebinding.get_bindings }
  let(:rendered){ erb.result local_bindings }

  let(:shop){ double :shop }

  before do
    expect(shop).to receive(:name){ 'Maruzen' }
    expect(shop).to receive(:id){ 1 }
  end

  subject(:doc){ Capybara.string rendered }

  describe "listing" do
    subject{ doc.find('li a') }
    its(:text){ is_expected.to eq 'Maruzen' }
    its([:href]){ is_expected.to eq '/shops/1' }
  end
end
