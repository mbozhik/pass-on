class AddDetailsToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :from_location, :string
    add_column :requests, :to_location, :string
    add_column :requests, :from_date, :datetime
    add_column :requests, :to_date, :datetime
    add_column :requests, :requester_link, :string
  end
end
