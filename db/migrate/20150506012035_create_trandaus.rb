class CreateTrandaus < ActiveRecord::Migration
  def change
    create_table :trandaus do |t|
      t.integer :banthangdoinha
      t.integer :banthangdoikhach
      t.references :doinha, index: true
      t.references :doikhach, index: true
      t.datetime :thoigian
      t.references :vongdau, index: true
      t.references :sanvandong, index: true

      t.timestamps
    end
  end
end
