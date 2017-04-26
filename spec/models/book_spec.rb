require 'rails_helper'

describe Book, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :cover }
  it { is_expected.to validate_presence_of :genre }
  it { is_expected.to validate_presence_of :page_count }
end
