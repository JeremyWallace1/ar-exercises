class Store < ActiveRecord::Base
  has_many :employees
  # validates :name, presence: true, length: { minimum: 3 }
  # validates :annual_revenue, numericality: { greater_than: 0 }
  # validate :mens_apparel_or_womens_apparel

  before_destroy :can_destroy?

  def mens_apparel_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add("mens_apparel or womens_apparel must be true")
    end
  end

  private
    def can_destroy?
      if self.annual_revenue > 0 || self.employees.size > 0
        self.errors.add(:base, "Can't be destroyed because either annual revenue > $0 or more than 0 employees.")
        throw :abort
      end
    end
end
