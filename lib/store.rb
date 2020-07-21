# frozen_string_literal: true

class Store < ActiveRecord::Base
  has_many :employees
  validate :valid_merchandise
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  def valid_merchandise
    unless :mens_apparel && :womens_apparel
      errors.add(:mens_apparel, 'Store must carry one of the apparel types')
    end
  end
  before_destroy :can_destroy?
  def can_destroy?
    unless employees.empty?
      errors.add(:employees, "Can't destroy store with more than 0 employees")
      false
    end
  end
end
