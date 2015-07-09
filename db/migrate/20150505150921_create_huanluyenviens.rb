class CreateHuanluyenviens < ActiveRecord::Migration
  def change
    create_table :huanluyenviens do |t|
      t.string :ten
      t.integer :tuoi
      t.string :quoctich

      t.timestamps
    end
  end
end
