class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  # mount_uploader :image, ImageUploader

  def self.order_by_name
    order(:name)
  end



end
