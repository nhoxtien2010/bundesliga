class AddLogoToDoibong < ActiveRecord::Migration
  def change
    add_column :doibongs, :logo, :string
  end
end
