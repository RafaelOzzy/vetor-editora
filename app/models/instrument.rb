class Instrument < ApplicationRecord
  # validates :instrument_questions, presence: true
  has_one :instrument_responses
  #enuns
  enum instrument_questions: {
    "Questão 1" => 0,
    "Questão 2" => 1,
    "Questão 3" => 2,
    "Questão 4" => 3,
    "Questão 5" => 4,
    "Questão 6" => 5,
    "Questão 7" => 6,
    "Questão 8" => 7
  }
end
