class Book < ApplicationRecord
    has_rich_text :description
    has_many :borrowings, dependent: :destroy
    validates :title, :author, presence: true
end
