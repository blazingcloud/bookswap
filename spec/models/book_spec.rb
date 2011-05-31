require 'spec_helper'

describe Book do
  before do
    @valid_attributes = {:title => "Oliver Twist", :author => "Charles Dickens"}
  end
  it "should be created with a title and a author" do
    Book.create!(@valid_attributes)
  end

  it "should require a title" do
    @invalid = @valid_attributes
    @invalid.delete(:title)
    b = Book.new(@invalid)
    b.should_not be_valid
  end

  it "should require an author" do
    @invalid = @valid_attributes
    @invalid.delete(:author)
    b = Book.new(@invalid)
    b.should_not be_valid
  end
end