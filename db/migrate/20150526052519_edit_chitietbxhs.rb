class EditChitietbxhs < ActiveRecord::Migration
  def change
    add_column :chitietbxhs, :tongsobanthua, :integer
    remove_column :chitietbxhs, :hieuso, :string
  end
end
