class CreateLichthidaus < ActiveRecord::Migration
  def change
    create_table :lichthidaus do |t|
      t.integer :muagiai
      t.references :vongdau, index: true

      t.timestamps
    end
  end
end
