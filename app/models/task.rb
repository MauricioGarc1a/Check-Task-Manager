class Task < ActiveRecord::Base
  validates :task, :duedate, :priority, presence: true
  validates_format_of :duedate, with: /\d{4}-\d{2}-\d{2}/, :message => "^Date must be in the following format: yyyy/mm/dd"
  validates :status, exclusion: { in: [nil] }

  validates_inclusion_of :priority, in: %w(high normal low), allow_blank: true
  validate :valid_date

  def valid_date
    if duedate.present? && duedate < Date.today
      errors.add(:duedate, "can't be in the past")
    end
  end

  #
  # private
  #
  # def duedate_is_date?
  #   if !duedate.is_a?(Date)
  #     errors.add(:duedate, 'must be a valid date')
  #   end
  # end


end
