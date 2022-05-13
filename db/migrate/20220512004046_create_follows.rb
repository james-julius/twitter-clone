class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.integer :follower_id
      t.string :followed_user_id
      t.string :integer

      t.timestamps
    end
  end
end
