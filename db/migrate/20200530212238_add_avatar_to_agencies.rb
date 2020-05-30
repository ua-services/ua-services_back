class AddAvatarToAgencies < ActiveRecord::Migration[6.0]
  def change
    add_column :agencies, :avatar, :string
  end
end
