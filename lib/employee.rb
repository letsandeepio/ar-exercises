# frozen_string_literal: true

require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: [40, 200] }
  validates :store_id, presence: true

  before_create do
    self.password = SecureRandom.alphanumeric(8) if password.blank?
  end
end
