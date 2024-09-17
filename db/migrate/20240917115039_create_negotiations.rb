class CreateNegotiations < ActiveRecord::Migration[7.0]
  def change
    create_table :negotiations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :proposal, null: false, foreign_key: true
      t.decimal :price, precision: 7, scale: 2 

      t.timestamps
    end
  end
end
