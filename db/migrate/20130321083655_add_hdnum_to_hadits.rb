class AddHdnumToHadits < ActiveRecord::Migration
  def change
    add_column :hadits, :hdnum, :integer
  end
end
