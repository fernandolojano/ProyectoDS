class CreateBalanceCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :balance_criptomonedas do |t|
      t.float :valor
      t.string :token_criptomoneda
      t.bigint :usuario_id

      t.timestamps
    end
    add_foreign_key :balance_criptomonedas, :criptomonedas, column: 'token_criptomoneda', primary_key: 'token_criptomoneda'
    add_foreign_key :balance_criptomonedas, :usuarios
  end
end