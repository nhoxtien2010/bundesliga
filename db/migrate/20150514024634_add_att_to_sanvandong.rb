class AddAttToSanvandong < ActiveRecord::Migration
  def change
    add_column :sanvandongs, :hinhanh, :string
    add_column :sanvandongs, :ten, :string
  end
end
