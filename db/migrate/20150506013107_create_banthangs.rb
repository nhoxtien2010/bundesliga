class CreateBanthangs < ActiveRecord::Migration
  def change
    create_table :banthangs do |t|
      t.integer :thoigian
      t.references :cauthu, index: true
      t.references :chitiettrandau, index: true

      t.timestamps
    end
  end
end
