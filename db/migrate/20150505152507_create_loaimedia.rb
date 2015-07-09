class CreateLoaimedia < ActiveRecord::Migration
  def change
    create_table :loaimedia do |t|
      t.string :ten

      t.timestamps
    end
  end
end
