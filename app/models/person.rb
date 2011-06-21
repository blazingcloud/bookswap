class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :given_name, :surname

  has_many  :book_shelves
  has_many  :books, :through => :book_shelves
  validates_presence_of :given_name, :surname

  def full_name
    "#{given_name} #{surname}"
  end
  
end
