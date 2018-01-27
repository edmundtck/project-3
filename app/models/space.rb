class Space < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :website, dependent: :destroy
  belongs_to :user, dependent: :destroy

  has_many :bookmarks
  has_many :reviews
  has_many :products

  # mount_uploader :image_url, ImageUploader

end
