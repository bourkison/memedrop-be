class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :username
      t.string :email
      t.text :ad_key
      t.string :password
      t.string :password_confirmation
      t.integer :strikes

      t.timestamps
    end
  end
end
