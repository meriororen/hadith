class RemoveBookFromHadit < ActiveRecord::Migration
  def up
    remove_column :hadits, :book
  end

  def down
    add_column :hadits, :book, :string
  end
end
