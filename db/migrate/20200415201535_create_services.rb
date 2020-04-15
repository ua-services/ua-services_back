class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :duration
      t.float :price
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :services, :deleted_at
  end
end
