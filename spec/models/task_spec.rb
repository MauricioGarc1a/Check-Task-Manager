require 'rails_helper'

RSpec.describe Task, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:task) }
    it { is_expected.to validate_presence_of(:duedate) }
    it { is_expected.to validate_presence_of(:priority) }
    it { is_expected.to validate_presence_of(:status) }
  end

  it do
    should validate_inclusion_of(:priority).
      in_array(['high', 'normal', 'low'])
  end




end
