class Menu < ApplicationRecord
  validates :date, presence: true
  validates :category_id, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options numericality: { other_than: 1 } do
    validates :category_id
  end

  has_many_attached :images

  def self.search(search)
    if search != ""
      Menu.where('text LIKE(?)', "%#{search}%")
    else
      Menu.all.order("date DESC").order("category_id ASC")
    end
  end
end
