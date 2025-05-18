class PostImage < ApplicationRecord
  # ActiveStorageで画像アップロード機能
  has_one_attached :image

  # 投稿はユーザーと紐づいている（1:N の N 側）
  belongs_to :user

  # 画像が存在しない場合にデフォルト画像を返すメソッド
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg' # app/assets/images/no_image.jpg を asset pipeline 経由で表示
    end
  end
end