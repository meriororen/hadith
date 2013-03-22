class AddTgtnumToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :tgtnum, :integer
  end
end
