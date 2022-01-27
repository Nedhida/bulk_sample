class ApplicationRecord < ActiveRecord::Base
  # ActiveRecordはrubyとSQLの翻訳機。ModelにApplicationRecordを介してActiveRecordが適用されている

  self.abstract_class = true
end
