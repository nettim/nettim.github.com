class CreateApexAccessControl < ActiveRecord::Migration
  def change
    create_table :apex_access_control do |t|
      t.integer :id
      t.string :admin_username

      t.timestamps
    end
  end
end
