class CreateDoibongs < ActiveRecord::Migration
  def change
    create_table :doibongs do |t|
      t.string :ten
      t.string :diachi
      t.string :dienthoai
      t.string :fax
      t.string :website
      t.string :facebook
      t.date :ngaytl
      t.string :mauao
      t.string :bacsy
      t.string :nguoidaidientruyenthong  
      t.references :huanluyenvien, index: true

      t.timestamps
    end
  end
end
