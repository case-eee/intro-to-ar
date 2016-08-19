class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.text      :name
      t.integer   :age
      t.integer   :total_winnings

      t.timestamps null: false
    end
  end
end
