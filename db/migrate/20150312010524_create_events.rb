class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
  end
end
