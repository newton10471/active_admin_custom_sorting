class CreateGoldStars < ActiveRecord::Migration
  def change
    create_table :gold_stars do |t|
      t.integer :admin_user_id
      t.timestamps
    end

    add_index :gold_stars, :admin_user_id
  end
end
