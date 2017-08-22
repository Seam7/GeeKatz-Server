class CreateKats < ActiveRecord::Migration[5.1]
  def change
    create_table :kats do |t|
      t.string :img
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
