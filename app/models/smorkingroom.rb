class Smorkingroom < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'あり' },
    { id: 3, name: 'なし' },
    { id: 4, name: '館外にあり' },
  ]
end
