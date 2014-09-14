class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :salt
      t.string :password
      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true
    add_column :users, :remember_token, :string
    add_index :users, :remember_token
  end
end
