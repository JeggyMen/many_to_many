class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product

  before_create :set_status_to_pending

  private
  def set_status_to_pending
    self.status = "pending"
  end
end
