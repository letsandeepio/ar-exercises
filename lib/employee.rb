# frozen_string_literal: true

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200 }
  before_create do
    self.password = 'login123' if password.blank?
  end
end
