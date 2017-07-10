class Song < ApplicationRecord

  validates :name, presence: true


  def self.order_by_name
    order(:name)
  end



end
