class AddCityToButlers < ActiveRecord::Migration[6.0]
  def change
    add_column :butlers, :city, :string
  end
end
