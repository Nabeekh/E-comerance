class Category < ApplicationRecord
	has_many :sub_categories , dependent: :destroy
	has_attached_file :avatar, styles: { medium: "800x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end