class CreateExpansions < ActiveRecord::Migration[6.1]
  def change
    create_table :expansions do |t|
      t.string :name
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
