class RemoveSanvandongFromTrandaus < ActiveRecord::Migration
  def change
    remove_column :trandaus, :sanvandong, :string
  end
end
