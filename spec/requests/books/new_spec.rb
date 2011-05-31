require 'spec_helper'

describe 'create a book' do
  it "with an author and title" do
    visit new_book_path

    fill_in "book[title]", :with => 'The Book of the Book'
    fill_in "book[author]", :with => 'Idries Shah'
    click_on "SAVE"
    visit books_path
    page.should have_content('The Book of the Book')
  end
end
