class Task < ActiveRecord::Base
  validates :task,:duedate, :priority, :status, presence:true
  # validate :duedate_is_date?

  validates_inclusion_of :priority, in: %w(high normal low), allow_blank: true





  #
  # private
  # 
  # def duedate_is_date?
  #   if !duedate.is_a?(Date)
  #     errors.add(:duedate, 'must be a valid date')
  #   end
  # end


end
