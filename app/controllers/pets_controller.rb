class PetsController < ApplicationController
  has_many :appts
  belongs_to :customers
end
