require 'spec_helper'

describe 'list of books' do
  let(:book1) do
    Book.create!(:title => 'Learning how to learn', :author => 'Idries Shah')
  end
  let(:book2) do
    Book.create!(:title => 'Knowing how to know',  :author => 'Idries Shah')
  end

  before do
    book1
    book2
    visit books_path
  end
  it 'includes title and author' do
    page.should have_css(".author", :text => 'Idries Shah')
    page.should have_css(".title" , :text => 'Learning how to learn')
  end
end

