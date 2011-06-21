class Person < ActiveRecord::Base
  has_many  :book_shelves
  has_many  :books, :through => :book_shelves
  validates_presence_of :given_name, :surname

  def full_name
    "#{given_name} #{surname}"
  end
  
end
