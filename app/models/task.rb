class Task < ActiveRecord::Base
  validates :task,:duedate, :priority, :status, presence:true

  validates_inclusion_of :priority, in: %w(high normal low), allow_blank: true

end
