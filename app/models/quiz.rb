class Quiz < ActiveRecord::Base
  validates :name, present: true, length: { maximum: 50, minimum: 3 }
  validates :answer, present: true, length: { maximum: 500, minimum: 10 }
end
