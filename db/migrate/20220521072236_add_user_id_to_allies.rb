class AddUserIdToAllies < ActiveRecord::Migration[7.0]
  def change
    add_column :allies, :user_id, :integer
    add_index :allies, :user_id
  end
end
