class AddAddressToButlers < ActiveRecord::Migration[6.0]
  def change
    add_column :butlers, :address, :string
  end
end
