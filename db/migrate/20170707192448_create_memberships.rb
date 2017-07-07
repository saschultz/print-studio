class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.string :membership_type
      t.string :description
      t.string :tools
      t.integer :cost
      t.string :cost_rate
      t.timestamps
    end
  end
end
