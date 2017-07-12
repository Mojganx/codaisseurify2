class Song < ApplicationRecord
  validates :name, presence: true
  belongs_to :artist


  def self.order_by_name
    order(:name)
  end



end
