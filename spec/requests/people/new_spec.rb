require 'spec_helper'
describe 'new' do
  it 'people can be created with a surname and a given_name' do
    visit "/people/new"
    fill_in "person[surname]", :with => 'Constantanople'
    fill_in "person[given_name]", :with => 'Bambi'
    click_on "SAVE"
    current_path.should == '/people'
  end
end
