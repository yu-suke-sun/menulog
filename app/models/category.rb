class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '昼御膳' },
    { id: 3, name: '梅会席' },
    { id: 4, name: '雪会席' },
    { id: 5, name: '月会席' },
    { id: 6, name: '花会席' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :menus
end
