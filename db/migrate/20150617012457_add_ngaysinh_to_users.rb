class AddNgaysinhToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ngaysinh, :date
  end
end
