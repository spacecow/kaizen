require File.expand_path '../../../app/presenters/base_presenter', __FILE__
require File.expand_path '../../../app/presenters/book_presenter', __FILE__

describe BookPresenter do
  let(:view){ double :view }
  let(:book){ double :book }
  let(:presenter){ BookPresenter.new book, view }
  subject{ presenter.public_send method }

  describe '#author_ids' do
    let(:author){ double :author }
    let(:method){ :author_ids }
    before do
      expect(author).to receive(:id){ 2 }
      expect(book).to receive(:authors){ [author] }
    end
    it{ is_expected.to eq '2' }
  end

  describe '#author_names' do
    let(:author){ double :author }
    let(:method){ :author_names }
    before do
      expect(author).to receive(:name){ 'Steven Erikson' }
      expect(book).to receive(:authors){ [author] }
    end
    it{ is_expected.to eq 'Steven Erikson' }
  end
 
end
