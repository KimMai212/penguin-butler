class AddZipcodeToButlers < ActiveRecord::Migration[6.0]
  def change
    add_column :butlers, :zipcode, :string
  end
end
