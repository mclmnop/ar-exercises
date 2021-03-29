class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :needs_to_sell_at_least_women_or_mens_clothes, on: :create

  
  def needs_to_sell_at_least_women_or_mens_clothes
    puts womens_apparel
    if (womens_apparel == nil || womens_apparel == false) && (mens_apparel == nil || mens_apparel == false)
      errors.add(:at_least_men_or_women, "needs to sell at least women or mens clothes")
    end
  end
end

