class SetupFollowing < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.references :follows, foreign_key: { to_table: :users }
    end
  end
end
