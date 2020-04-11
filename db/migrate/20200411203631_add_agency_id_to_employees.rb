class AddAgencyIdToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :agency_id, :integer, foreign_key: true
  end
end
