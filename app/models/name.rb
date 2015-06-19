class Name < ActiveRecord::Base
	has_many :ratings

	validates :name, :owner,
				presence: true, length: {maximum: 100}
	validates :name, format: {with: /\A[A-Za-z0-9 \-_,.]+\z/}
	validates :image, :attachment_presence => true

	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
