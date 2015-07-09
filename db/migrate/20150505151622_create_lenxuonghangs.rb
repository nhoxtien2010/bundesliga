class CreateLenxuonghangs < ActiveRecord::Migration
  def change
    create_table :lenxuonghangs do |t|
      t.string :ten
      t.string :thongtin

      t.timestamps
    end
  end
end
