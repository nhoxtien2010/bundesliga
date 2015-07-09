class CreateSanvandongs < ActiveRecord::Migration
  def change
    create_table :sanvandongs do |t|
      t.integer :soghe
      t.string :diachi
      t.string :thongtinthem
      t.references :doibong, index: true

      t.timestamps
    end
  end
end
