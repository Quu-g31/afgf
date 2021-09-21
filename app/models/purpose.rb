class Purpose < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'トリオ' },
    { id: 3, name: 'デュオ' },
    { id: 4, name: 'ランク' },
    { id: 5, name: 'アリーナ' },
    { id: 6, name: 'アリーナランク' },
    { id: 7, name: '射撃訓練場' },
    { id: 8, name: 'なんでも' }
  ]

  include ActiveHash::Associations
  has_many :posts
  end