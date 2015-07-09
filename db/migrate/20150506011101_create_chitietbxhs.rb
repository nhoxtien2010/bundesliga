class CreateChitietbxhs < ActiveRecord::Migration
  def change
    create_table :chitietbxhs do |t|
      t.integer :thuhang
      t.integer :sotranthidau
      t.integer:diem
      t.string :hieuso
      t.integer:tongsobanthang
      t.integer :sotranthang
      t.integer :sotranghoa
      t.integer :sotrangthua
      t.references :bangxephang, index: true
      t.references :doibong, index: true
      t.references :lenxuonghang, index: true

      t.timestamps
    end
  end
end
