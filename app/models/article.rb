class Article < ApplicationRecord
  validates :title, presence: true, length: {in: 4..140}
  validates :text, presence: true, length: {maximum: 4000}
  has_many :comments, dependent: :destroy

  def subject
    title
  end

end
