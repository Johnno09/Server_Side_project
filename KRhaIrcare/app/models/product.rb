class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
 #   serialize :image, JSON
    belongs_to :user, optional: true
    
    
    validates :brand, :price, :name, :description, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed. "}
  validates :name, length: { maximum: 100, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, numericality: { only_interger: true}, length: { maximum: 7 }


 # DETAILS = %w{ Dry_Hair Dry_Scalp Curly_Hair }
    
end
