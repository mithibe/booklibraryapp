class Borrowing < ApplicationRecord
  belongs_to :book
  validates :borrower_name, :borrowed_on, presence: true
end
