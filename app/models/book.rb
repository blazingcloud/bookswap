class Book < ActiveRecord::Base
  validates_presence_of :title, :author
  has_many :book_shelves 
  has_many :owners, :through => :book_shelves, :source => :person
end
