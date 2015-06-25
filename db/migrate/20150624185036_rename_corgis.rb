class RenameCorgis < ActiveRecord::Migration
  def change
  	rename_table :names, :corgis
  end
end
