class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
     	t.string :name, null: false
     	t.string :owner, null: false
   		t.timestamps null: false
    end

    add_index :names, :name
    add_index :names, :owner
  end
end
