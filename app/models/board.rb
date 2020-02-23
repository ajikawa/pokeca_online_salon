# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  body       :text
#  img        :string
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ApplicationRecord
  has_many :comments, dependent: :delete_all 
  has_many :board_tag_relations, dependent: :delete_all
  has_many :tags, through: :board_tag_relations
  mount_uploader :img, ImgUploader

  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
  validate  :img_size

  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:img, "should be less than 5MB")
      end
    end
end
