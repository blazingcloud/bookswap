class Person < ActiveRecord::Base
  has_many  :book_shelfs
  has_many  :books, :through => :book_shelfs
  validates_presence_of :given_name, :surname

  def full_name
    "#{given_name} #{surname}"
  end
  
end
