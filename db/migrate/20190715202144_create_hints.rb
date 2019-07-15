class CreateHints < ActiveRecord::Migration[5.2]
  def change
    create_table :hints do |t|
      t.references :game, foreign_key: true
      t.string :word
      t.integer :num
      t.integer :team

      t.timestamps
    end
  end
end
