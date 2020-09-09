class CreateTheaters < ActiveRecord::Migration[6.0]
  def change
    create_table :theaters do |t|
      t.references :user,              null: false, foreign_key: true
      t.string :name,                  null: false, default: ""
      t.integer :prefecture_id,        null: false
      t.text :city,                    null: false
      t.integer :company_id,           null: false
      t.integer :parking_id,           null: false
      t.integer :smorkingroom_id,      null: false
      t.text :access,                  null: false
      t.integer :babyroom_id,          null: false
      t.text :remark
      t.timestamps
    end
  end
end
