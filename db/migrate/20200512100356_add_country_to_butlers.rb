class AddCountryToButlers < ActiveRecord::Migration[6.0]
  def change
    add_column :butlers, :country, :string
  end
end
