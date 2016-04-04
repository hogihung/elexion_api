require 'rails_helper'

describe Candidate, "validations", type: :model do
  let :status_array do
    %w(active suspended dropped-out)
  end

  let :party_array do
    %w(Republican Democrat Independent Third-Party)
  end

  it { should respond_to(:first_name) }
  it { should respond_to(:first_name=) }

  it { should respond_to(:last_name) }
  it { should respond_to(:last_name=) }

  it { should respond_to(:party) }
  it { should respond_to(:party=) }

  it { should respond_to(:delegate_count) }
  it { should respond_to(:delegate_count=) }

  it { should respond_to(:popular_vote_count) }
  it { should respond_to(:popular_vote_count=) }

  it { should respond_to(:status) }
  it { should respond_to(:status=) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:party) }
  it { should validate_presence_of(:delegate_count) }
  it { should validate_presence_of(:popular_vote_count) }
  it { should validate_presence_of(:status) }

  it { should validate_inclusion_of(:status).in_array(status_array) }
  it { should validate_inclusion_of(:party).in_array(party_array) }
end

describe Candidate, '#full_name' do
  it 'returns the full name for a given candidate' do
    candidate = create(:trump)
    expect(candidate.full_name).to eq 'Donald Trump'
  end
end
