class AddHinhanhToSanvandong < ActiveRecord::Migration
  def change
    #add_column :sanvandongs, :hinhanh1, :string
   # add_column :sanvandongs, :hinhanh2, :string
   # add_column :sanvandongs, :thongtin, :string
    #add_column :sanvandongs, :chitietthongtin, :text
    #add_column :sanvandongs, :thanhlap, :string
    add_column :baiviets, :loaibaiviet, :integer
  end
end
