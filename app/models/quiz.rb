class Quiz < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :answer, presence: true, length: { maximum: 500, minimum: 10 }
end
