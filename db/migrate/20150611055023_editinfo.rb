class Editinfo < ActiveRecord::Migration
  def change
    #remove_column  :sanvandongs, :thongtinthem, :string
    #add_column :sanvandongs, :ve, :string
 #   add_column :baiviets, :hinhanh, :string
   # add_column :baiviets, :hinhanh1, :string
    #add_column :baiviets, :hinhanh2, :string
   # add_column :baiviets, :doibong_id, :integer  
  #  add_column :baiviets, :giaidau, :string
    #add_column :cauthus, :hinhanh, :string
    add_column :videos, :tuade, :string
    add_column :videos, :video, :string
    add_column :videos, :noidung, :string
  end
end
