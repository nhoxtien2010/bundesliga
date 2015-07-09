class AddHinhanh2ToCauthu < ActiveRecord::Migration
  def change
    add_column :cauthus, :hinhanh2, :string
  end
end
