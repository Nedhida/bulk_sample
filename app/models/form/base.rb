class Form::Base
  # ActiveRecordはrubyとSQLの翻訳機。ModelにApplicationRecordを介してActiveRecordが適用されている

  #incluedeメソッドは、クラスやモジュールに他のモジュールをインクルードする
  #ActiveModelは多くのモジュールを含むライブラリ。対応するレコードがないフォームを使うときに使用。ビューをシンプルに、処理をモデルに
  #Action PackやAction Viewと連携する機能をすぐに使える。モデル名の調査,変換,翻訳,バリデーション
  include ActiveModel::Model
  #Active Recordスタイルのコールバックを提供
  include ActiveModel::Callbacks
  #クラスオブジェクトをActive Recordスタイルで検証できる
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  #コールバックとは必要なタイミングで呼び出せるように、あらかじめ定義しておく関数のこと

  def value_to_boolean(value)
    ActiveRecord::ConnectionAdapters::Column.value_to_boolean(value)
  end

end