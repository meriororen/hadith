class AddChnumToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :chnum, :integer
  end
end
