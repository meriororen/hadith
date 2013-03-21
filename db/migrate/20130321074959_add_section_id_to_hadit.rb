class AddSectionIdToHadit < ActiveRecord::Migration
  def change
    add_column :hadits, :section_id, :integer
  end
end
