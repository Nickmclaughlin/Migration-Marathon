class FixCategorizationsTableRenameCheckoutIdCateogryId < ActiveRecord::Migration
  def up
    remove_column :categorizations, :checkout_id
    add_column :categorizations, :category_id, :integer, null: false
  end

  def down
    remove_column :categorizations, :category_id
    add_column :categorizations, :checkout_id, :integer, null: false
  end


end
