class CreateKats < ActiveRecord::Migration[5.1]
  def change
    create_table :kats do |t|
      t.string :title
      t.string :img
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
