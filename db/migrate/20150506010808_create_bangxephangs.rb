class CreateBangxephangs < ActiveRecord::Migration
  def change
    create_table :bangxephangs do |t|
      t.references :vongdau, index: true

      t.timestamps
    end
  end
end
