class RemovehHinhanh2FromCauthu < ActiveRecord::Migration
  def change
    remove_column :cauthus, :hinhanh2
  end
end
