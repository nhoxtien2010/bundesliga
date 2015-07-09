class CreateVitris < ActiveRecord::Migration
  def change
    create_table :vitris do |t|
      t.string :tenvitri
      t.string :phamvihd

      t.timestamps
    end
  end
end
