class CreateTheaters < ActiveRecord::Migration[6.0]
  def change
    create_table :theaters do |t|

      t.timestamps
    end
  end
end
