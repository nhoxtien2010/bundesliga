class AddNgaysinhToCauthus < ActiveRecord::Migration
  def change
    add_column :cauthus, :ngaysinh, :date
  end
end
