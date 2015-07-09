class AddHinhanhToHuanluyenviens < ActiveRecord::Migration
  def change
    add_column :huanluyenviens, :hinhanh, :string
  end
end
