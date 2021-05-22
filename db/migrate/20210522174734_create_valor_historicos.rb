class CreateValorHistoricos < ActiveRecord::Migration[6.1]
  def change
    create_table :valor_historicos do |t|
      t.datetime :fecha
      t.float :valor
      t.string :token_criptomoneda
      t.timestamps
    end
    add_foreign_key :valor_historicos, :criptomonedas, column: 'token_criptomoneda', primary_key:'token_criptomoneda'
  end
end