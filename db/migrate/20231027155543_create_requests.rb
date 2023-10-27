class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :description
      t.string :direction

      t.timestamps
    end
  end
end
