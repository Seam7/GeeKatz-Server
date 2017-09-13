class CreateJoinTableUserKat < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :kats do |t|
      t.index [:user_id, :kat_id]
      # t.index [:kat_id, :user_id]
    end
  end
end
