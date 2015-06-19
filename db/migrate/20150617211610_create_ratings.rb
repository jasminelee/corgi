class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
    	t.belongs_to :name, null: false
    	t.integer :value, null:false
	    t.timestamps null: false
    end

    add_foreign_key :ratings, :names
    add_index :ratings, :name_id #t.belongs_to automatically concatenates "_id" to :name in the db column
    add_index :ratings, :created_at
  end
end
