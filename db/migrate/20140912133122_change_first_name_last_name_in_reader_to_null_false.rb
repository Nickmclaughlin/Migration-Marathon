class ChangeFirstNameLastNameInReaderToNullFalse < ActiveRecord::Migration
  def up
    change_column :readers, :first_name, :string, null: false
    change_column :readers, :last_name, :string, null: false
  end

  def down
    change_column :reader, :first_name, :string
    change_column :reader, :first_name, :string
  end
end
