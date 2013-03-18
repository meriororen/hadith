class CreateHadits < ActiveRecord::Migration
  def change
    create_table :hadits do |t|
      t.string :matan
      t.string :book

      t.timestamps
    end
  end
end
