class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.string :equipamento
      t.string :defeito
      t.string :marca
      t.string :descricao
      t.string :string
      t.string :status
      t.string :valor
      t.references :cliente, index: true, foreign_key: true
      t.references :empregado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
