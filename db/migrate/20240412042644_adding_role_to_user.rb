class AddingRoleToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :psychologist, :boolean, default: false
    add_column :users, :patient, :boolean, default: false
  end
end
