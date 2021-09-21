class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :platform
  belongs_to :purpose

  belongs_to :user

  with_options presence: true do
    validates :title
    validates :text
    validates :purpose
  end
  validates :platform_id, numericality: { other_than: 1, message: "が未選択です" }
end
