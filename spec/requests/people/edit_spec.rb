require 'spec_helper'
describe 'edit' do
  let(:person) do
    Person.create!(:given_name => 'Jean Luc', :surname => 'Picard',:email => 'c@tng.com', :password => '123456', :password_confirmation => '123456')
  end
  
  before do
    person
    integration_sign_in 'c@tng.com','123456'
    visit %%/people/#{person.id}/edit%
    save_and_open_page
  end
 
  it 'has a label for given name' do
    page.should have_content("Given name")
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
