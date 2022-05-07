class Pet < ApplicationRecord
  belongs_to :customers
  # has_many :appts
end
