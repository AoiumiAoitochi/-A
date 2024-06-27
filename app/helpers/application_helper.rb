module ApplicationHelper
#pageごとにタイトルを返す
  def full_title(page_name = "") #メソッド引数の定義
    base_title = "AttendanceApp" #baseのタイトル名に変数を代入
    if page_name.empty? #引数を受け取っているか判定
      base_title #引数page_nameが空白の場合はbase_titleを返す。
    else #空白でない場合
      page_name + "|" + base_title #文字列を連結して返す。
    end
  end
end
