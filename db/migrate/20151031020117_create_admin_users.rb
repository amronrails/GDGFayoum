class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :username
      t.string :password_digest
      t.boolean :adminstrator
      t.string :email

      t.timestamps null: false
    end
      add_attachment :admin_users, :avatar
      add_index :admin_users, :username
  end
end
