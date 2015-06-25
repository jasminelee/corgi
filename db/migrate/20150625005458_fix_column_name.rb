class FixColumnName < ActiveRecord::Migration
  def change
  	    rename_column :ratings, :name_id, :corgi_id
  end
end
