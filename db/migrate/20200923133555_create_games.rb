class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.integer :year

      t.timestamps
    end
  end
end
