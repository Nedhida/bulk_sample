class Product < ActiveRecord::Base

  validates :code, presence: true, length: { maximum: 10 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :name_kana, length: { maximum: 50 }

  validates :price, presence: true,
            # numericality:は数値のみ許可する際に使用。整数のみ、０以上の正の数のみ
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # boolean型が空でないことのvalidates。inclusion内に値が含まれているか
  validates :availability, inclusion: { in: [true, false] }

end
