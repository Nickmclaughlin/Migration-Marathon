class ReplaceReaderWithReaderIdCheckouts < ActiveRecord::Migration
  def up
    remove_column :checkouts, :reader
    add_column :checkouts, :reader_id, :integer
  end

  def down
    add_column :checkouts, :reader, :string
    remove_column :checkouts, :reader_id
  end
end
