class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :feedback
      t.integer :user_id
      t.integer :membership_id
      t.timestamps
    end
  end
end
