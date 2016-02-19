class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :nome
      t.string :numero
      t.string :especialidade
      t.string :regiao
      t.string :cartaodevisita

      t.timestamps null: false
    end
  end
end
