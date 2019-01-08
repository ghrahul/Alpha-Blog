class Article < ActiveRecord::Base
  belongs_to :user #user singular because one-to-many
  has_many :article_categories #many that's why article categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 3, maximum: 50}
  validates :description, presence: true, length: { minimum: 10, maximum: 300}
  validates :user_id, presence: true
end