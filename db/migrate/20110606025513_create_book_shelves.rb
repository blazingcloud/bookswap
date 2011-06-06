class CreateBookShelves < ActiveRecord::Migration
  def self.up
    create_table :book_shelves do |t|
      t.integer :book_id
      t.integer :person_id
      t.timestamps
    end
  end

  def self.down
    drop_table :book_shelves
  end
end
