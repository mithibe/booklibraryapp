class Book < ApplicationRecord
    has_many :borrowings, dependent: :destroy
    validates :title, :autho, presence: true
end
