class AddUserIdToRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :user_id, :integer
  end
end
