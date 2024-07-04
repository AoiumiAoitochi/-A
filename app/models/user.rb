class User < ApplicationRecord
  before_save {self.email = email.downcse}

  validates :name, presence: true, length: { maximum: 50 } #presence（プレゼンス）はオブジェクトが空または,nilでないか検証
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: true
                  #バリデーツ・プレゼンス・トゥルー・レングス・コロン・マキシマム
                  #lenght　文字数最低3文字,maximum 最大１２０文字
  has_secure_password #passwordをハッシュ化（入力されたデータ（パスワード）を元に戻せないデータにする処理）
  validates :password,presence: true,lenght: {minimum: 6}
end
