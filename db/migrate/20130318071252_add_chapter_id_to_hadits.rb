class AddChapterIdToHadits < ActiveRecord::Migration
  def change
    add_column :hadits, :chapter_id, :integer
  end
end
