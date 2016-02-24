require 'rails_helper'

RSpec.describe Task, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:task) }
    it { is_expected.to validate_presence_of(:duedate) }
    # it { is_expected.to validate_presence_of(:priority) }
    # it { is_expected.to validate_presence_of(:status) }
  end

  # describe "allowed values for priority" do
  #   it { should validate_inclusion_of(:priority). in_array(['high', 'normal', 'low']) }
  # end

  describe "allowed values for duedate" do
    it { should allow_value(Date.tomorrow).for(:duedate) }
    it { should_not allow_value(1.days.ago).for(:duedate) }
  end

# it "accepts only a valid date" do
#
# date = "2000-11-11"
# task = Task.new duedate: date
# task.should be_valid
# task.duedate.should == Date.parse(date)
#
# end

#   describe "allow value of status to be true or false!!" do
#   # This will work, but will give you a warning
#   it {should validate_inclusion_of(:status).in_array([true, false])}
# end



#   RSpec::Matchers.define :be_date_with_our_format do |expected|
#   match do |date|
#     date =~ /\d{4}.\d{2}.\d{2}/
#   end
# end
#
# it "has a placed_at date" do
#   bid.placed_at.should be_datetime_with_our_format
# end



end
