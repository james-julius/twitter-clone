class AddUsernameToUser < ActiveRecord::Migration[7.0]
   def change
    change_table :users do |t|
      t.string :username
    end
  end
end
