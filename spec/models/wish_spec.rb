require "rails_helper"

RSpec.describe Wish, type: :model do
  it { is_expected.to belong_to(:user) }
end
