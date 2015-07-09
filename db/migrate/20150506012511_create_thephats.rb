class CreateThephats < ActiveRecord::Migration
  def change
    create_table :thephats do |t|
      t.string :loaithe
      t.string :ghichu

      t.timestamps
    end
  end
end
