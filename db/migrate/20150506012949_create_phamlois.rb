class CreatePhamlois < ActiveRecord::Migration
  def change
    create_table :phamlois do |t|
      t.integer :thoigian
      t.references :thephat, index: true
      t.references :cauthu, index: true
      t.references :chitiettrandau, index: true

      t.timestamps
    end
  end
end
