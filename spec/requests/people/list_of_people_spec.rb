require 'spec_helper'
describe 'list of people' do
  before do
    Person.create!(:given_name => 'Thelma', :surname => 'Bush')
    Person.create!(:given_name => 'Louise', :surname => 'Clinton')
  end
  
  it 'shows up on index page' do
    visit '/people'
    page.should have_css('.full_name', :text => 'Thelma Bush')
    page.should have_css('.full_name', :text => 'Louise Clinton')
  end
end
