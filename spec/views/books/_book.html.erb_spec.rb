require 'rspec/its'
require 'capybara'

class ErbBinding
  def initialize hash
    hash.each do |key,val|
      singleton_class.send(:define_method,key){ val }
    end
  end 
  def get_bindings; binding end
end

describe 'books/_book.html.erb' do

  let(:filename){ File.expand_path '../../../../app/views/books/_book.html.erb', __FILE__ }
  let(:file){ File.read filename }
  let(:erb){ ERB.new file }
  let(:book){ double :book }
  let(:locals){{ book:book }}
  let(:ebinding){ ErbBinding.new locals }
  let(:local_bindings){ ebinding.get_bindings }
  let(:rendered){ erb.result local_bindings }

  let(:presenter){ double :presenter,
    author_names:'Steven Erikson', author_ids:2 }

  before do
    def ebinding.present obj; end
    expect(book).to receive(:id){ 1 }
    expect(book).to receive(:title){ 'Gardens of the Moon' }
    expect(ebinding).to receive(:present).and_yield presenter
  end

  subject(:doc){ Capybara.string rendered }

  describe "first column" do
    subject{ doc.all('td')[0] }
    its(:text){ is_expected.to eq '1' }
  end

  describe "second column" do
    subject{ doc.all('td')[1] }
    its(:text){ is_expected.to eq 'Gardens of the Moon' }
  end

  describe "third column" do
    subject{ doc.all('td')[2] }
    its(:text){ is_expected.to eq 'Steven Erikson' }
  end

  describe "forth column" do
    subject{ doc.all('td')[3] }
    its(:text){ is_expected.to eq '2' }
  end
end
