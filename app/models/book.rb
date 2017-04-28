class Book < ActiveRecord::Base
  mount_uploader :cover, CoverUploader

  validates :title, presence: true
  validates :genre, presence: true
  validates :page_count, presence: true
  validates :cover, presence: true
  validate :cover_size_validation

  private

  def cover_size_validation
    errors[:cover] << "should be less than 5MB" if cover.size > 1.megabytes
  end
end
