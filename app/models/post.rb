class Post < ApplicationRecord

  validates :title, presence: true, length: { minimum: 1 }
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
  validate :post_validator



  def post_validator
    if title == "True Facts"
      errors.add(:title, "Must include more clickbait!")
    end
  end
end
