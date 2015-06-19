class AddPaperclipToName < ActiveRecord::Migration
  def change
  end
	add_attachment :names, :image
end
