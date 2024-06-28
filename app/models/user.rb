class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 } #presence（プレゼンス）はオブジェクトが空または,nilでないか検証
  validates :email, presence: true, length: { maximum: 100 } #バリデーツ・プレゼンス・トゥルー・レングス・コロン・マキシマム
                  #lenght　文字数最低3文字,maximum 最大１２０文字

end
