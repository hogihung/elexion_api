require 'rails_helper'

describe User, "validations", type: :model do
  let :role_array do
    %w(admin republican_editor democrat_editor)
  end

  let :status_array do
    %w(active suspended inactive)
  end

  it { should respond_to(:name) }
  it { should respond_to(:name=) }

  it { should respond_to(:email) }
  it { should respond_to(:email=) }

  it { should respond_to(:role) }
  it { should respond_to(:role=) }

  it { should respond_to(:status) }
  it { should respond_to(:status=) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:status) }

  it { should validate_inclusion_of(:role).in_array(role_array) }
  it { should validate_inclusion_of(:status).in_array(status_array) }
end


