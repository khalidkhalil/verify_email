class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, index: true
      t.string :email
      t.timestamps
    end
  end
end
