require 'rails_helper'

describe BooksController do
  let(:call){ get method }

  describe "#index" do
    let(:method){ :index }
    let(:steven){ create :author, name:'Steven Erikson' }
    let(:moon){ create :book, title:'Gardens of the Moon' }
    let(:gates){ create :book, title:'Deadhouse Gates' }
    let(:hamilton){ create :author, name:'Peter F. Hamilton' }
    let(:void){ create :book, title:'The Dreaming Void' }
    before{ steven; moon; gates; hamilton; void }
    describe "@books" do
      subject{ assigns(:books).to_a }
      context "orders by author name, books id" do
        before do
          gates.authors << steven
          moon.authors << steven
          void.authors << hamilton
          call
        end
        it{ is_expected.to eq [void, moon, gates] }
      end
    end
  end

end
