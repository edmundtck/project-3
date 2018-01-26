class Space < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :website, dependent: :destroy
  belongs_to :user, dependent: :destroy
end