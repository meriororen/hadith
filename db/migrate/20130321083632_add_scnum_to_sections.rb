class AddScnumToSections < ActiveRecord::Migration
  def change
    add_column :sections, :scnum, :integer
  end
end
