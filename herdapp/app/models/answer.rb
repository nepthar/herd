class Answer < ApplicationRecord

  attribute :value, :integer
  attribute :created_by, :string

  belongs_to :question

  validates :value, inclusion: { in: 0..100 }
end
