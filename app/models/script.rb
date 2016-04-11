class Script < ActiveRecord::Base

  belongs_to :question, class_name: 'Script', foreign_key: :question_id
  has_many :answers, class_name: 'Script', foreign_key: :question_id

  before_validation :scrub_clean

  accepts_nested_attributes_for :answers, allow_destroy: :true, reject_if: :all_blank

  scope :survey, -> (query = nil) { where(question: query) }

  def self.next_sequence
    (Script.maximum(:sequence) || 0) + 10
  end

  def to_devine
    {id: self.id, sequence: self.sequence, phrase: self.phrase, code: self.code}
  end

  private

  def scrub_clean
    if self
      self.sequence = Script.next_sequence unless self.sequence
    end
  end
end
