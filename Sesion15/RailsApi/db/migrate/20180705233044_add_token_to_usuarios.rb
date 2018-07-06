class AddTokenToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :token, :string
    add_index :usuarios, :token, unique: true
  end
end