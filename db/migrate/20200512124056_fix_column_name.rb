class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :butlers_id, :butler_id
  end
end
