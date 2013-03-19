class ChangeMatanFormatInHadit < ActiveRecord::Migration
  def up
    change_column :hadits, :matan, :text
  end

  def down
    change_column :hadits, :matan, :string
  end
end
