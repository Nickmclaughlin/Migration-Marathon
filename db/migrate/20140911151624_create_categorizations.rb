class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |table|
      table.integer :checkout_id, null: false
      table.integer :book_id, null: false
    end

    add_index :categorizations, :checkout_id, unique: true
    add_index :categorizations, :book_id, unique: true
  end
end
