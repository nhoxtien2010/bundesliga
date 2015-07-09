class CreateChitiettrandaus < ActiveRecord::Migration
  def change
    create_table :chitiettrandaus do |t|
      t.references :trandau, index: true

      t.timestamps
    end
  end
end
