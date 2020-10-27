class Company < ActiveHash::Base
  self.data = [
    { id: 1, name: '松竹' },
    { id: 2, name: '東宝' },
    { id: 3, name: '東映' },
    { id: 4, name: '20世紀フォックス' },
    { id: 5, name: 'ソニーエンターテイメント' },
    { id: 6, name: 'ワーナーブラザーズ' },
    { id: 7, name: 'その他' }
  ]
end
