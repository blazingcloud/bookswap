require 'spec_helper'
describe 'edit' do
  let(:person) do
    Person.create!(:given_name => 'Jean Luc', :surname => 'Picard')
  end
  
  before do
    person 
    visit %%/people/#{person.id}/edit%
  end
  
  it 'can change the given_name of a person' do
    fill_in 'person[given_name]' , :with => 'Denna'
    click_on "SAVE"
    
    visit %%/people/#{person.id}%
    page.should have_content("Denna Picard")
  end
  
  it 'can change the surname of a person' do
    fill_in 'person[surname]' , :with => 'TROY'
    click_on "SAVE"
    
    visit %%/people/#{person.id}%
    page.should have_content("Jean Luc TROY")
  end
end
