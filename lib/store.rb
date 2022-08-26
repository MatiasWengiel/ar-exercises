class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :must_sell_mens_or_womens_apparel

  def must_sell_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:must_sell_mens_or_womens_apparel, "")
    end
  end
end
