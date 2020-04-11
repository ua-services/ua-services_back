class CreateAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :service_industry
      t.string :lng
      t.string :lat

      t.timestamps
    end
  end
end
