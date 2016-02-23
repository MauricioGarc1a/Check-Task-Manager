class Task < ActiveRecord::Base
  validates :task,:duedate, :priority, :status, presence:true

end
