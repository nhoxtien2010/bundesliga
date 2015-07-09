class CreateCauthus < ActiveRecord::Migration
  def change
    create_table :cauthus do |t|
      t.string :ten
      t.integer :tuoi
      t.string :quoctich
      t.float :chieucao
      t.float :cannang
      t.references :vitri, index: true
      t.references :doibong, index: true

      t.timestamps
    end
  end
end
