class ChangeVongdau < ActiveRecord::Migration
  change_table :vongdaus do |t|
  t.change :thoigianbatdau, :date
  t.change :thoigianketthuc, :date
end
end
