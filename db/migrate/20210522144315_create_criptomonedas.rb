class CreateCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :criptomonedas, id: false do |t|
      t.string :token_criptomoneda, null: false
      t.string :nombre
      t.float :valor_actual

      t.timestamps
    end
    execute "ALTER TABLE criptomonedas ADD PRIMARY KEY (token_criptomoneda)"
  end
end
