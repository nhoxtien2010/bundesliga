class RemoveHinhanhFromDoibongs < ActiveRecord::Migration
  def change    
    remove_column :doibongs, :hinhanh
  end
end
