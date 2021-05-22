class CreateBalanceCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :balance_criptomonedas, id: false do |t|
      t.float :valor
      t.string :token_criptomoneda
      t.bigint :usuario_id

      t.timestamps
    end

    add_foreign_key :balance_criptomonedas, :criptomonedas, column: 'token_criptomoneda', primary_key: 'token_criptomoneda'
    add_foreign_key :balance_criptomonedas, :usuarios
    execute "ALTER TABLE balance_criptomonedas ADD PRIMARY KEY (token_criptomoneda, usuario_id)"
  end
end