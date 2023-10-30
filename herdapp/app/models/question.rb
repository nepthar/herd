class Question < ApplicationRecord

  attribute :title, :string
  attribute :question, :string
  attribute :option1, :string
  attribute :option2, :string
  attribute :created_by, :string

  has_many :answers

  validates :title, length: { in: 1..255 }
  validates :question, length: { in: 1..255 }
  validates :option1, length: { in: 1..255 }
  validates :option2, length: { in: 1..255 }
  validates :created_by, length: { in: 1..255 }

end
