class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :mens_apparel_or_womens_apparel

  def mens_apparel_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add("mens_apparel or womens_apparel must be true")
    end
  end


end
