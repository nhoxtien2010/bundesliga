class RemoveTuoiFromCauthus < ActiveRecord::Migration
  def change
    remove_column :cauthus, :tuoi, :integer
    remove_column  :sanvandongs, :thongtinthem, :string
  end
end
