class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :category

  validates :category_id, presence: true, uniqueness: { scope: :book }
  validates :book_id, presence: true
end
