class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :genre, presence: true
  validates :page_count, presence: true
  validates :cover, presence: true
end
