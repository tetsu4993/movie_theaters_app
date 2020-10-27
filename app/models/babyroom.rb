class Babyroom < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'あり' },
    { id: 3, name: '0〜1歳まで' },
    { id: 4, name: '3歳まで' },
    { id: 5, name: 'なし'}
  ]
end
