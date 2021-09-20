class Platform < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'PC' },
    { id: 3, name: 'PS4' },
    { id: 4, name: 'Xbox' },
    { id: 5, name: 'Switch' }
  ]

  include ActiveHash::Associations
  has_many :posts
  end