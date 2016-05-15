class CreateEmpregadores < ActiveRecord::Migration
  def change
    create_table :empregadores do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
