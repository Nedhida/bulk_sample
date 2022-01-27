class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.string :code, null:false #商品コード
      t.string :name, null:false #商品名
      t.string :name_kana, null:false, default: "" #カナ
      t.integer :price, null:false #商品価格
      t.integer :purchase_cost, null:false #仕入原価
      t.boolean :availability, default:false, null:false #購入可能フラグ

      t.timestamps
    end
  end
end
