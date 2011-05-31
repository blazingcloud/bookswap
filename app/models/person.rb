class Person < ActiveRecord::Base
  validates_presence_of :given_name, :surname

  def full_name
    "#{given_name} #{surname}"
  end
end
