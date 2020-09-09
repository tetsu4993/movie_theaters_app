class Parking < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '有料駐車場' },
    { id: 3, name: '無料駐車場' },
    { id: 4, name: '近くにあり' },
    { id: 5, name: 'なし' }
  ]
end
