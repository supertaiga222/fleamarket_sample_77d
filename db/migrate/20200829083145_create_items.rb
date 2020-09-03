class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,           null: false
      t.integer :price,          null: false
      t.string  :explanation,    null: false
      t.string  :delivery_day,   null: false
      t.string  :fee,            null: false
      t.integer :user_id,        null: false, foreign_key: true
      t.integer :category_id,    null: false, foreign_key: true
      t.integer :brand_id    
      #  発送元情報はusersに必要なのでは？？
      t.integer :consignor_id
      t.integer :condition_id,   null: false, foreign_key: true
      # 都道府県情報は出品時に必要なのでは？
      t.integer :prefecture_id
      t.timestamps
    end
  end
end