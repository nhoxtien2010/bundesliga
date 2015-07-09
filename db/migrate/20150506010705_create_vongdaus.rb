class CreateVongdaus < ActiveRecord::Migration
  def change
    create_table :vongdaus do |t|
      t.integer :stt
      t.integer :sotrandathidau
      t.datetime :thoigianbatdau
      t.datetime :thoigianketthuc

      t.timestamps
    end
  end
end
