class Pqr < ApplicationRecord
  # belongs_to :user
  # belongs_to :pqr_files
  belongs_to :status, :optional => true
end
