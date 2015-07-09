class CreateBaiviets < ActiveRecord::Migration
  def change
    create_table :baiviets do |t|
      t.string :tieude
      t.string :noidung
      t.references :taikhoan, index: true

      t.timestamps
    end
  end
end
