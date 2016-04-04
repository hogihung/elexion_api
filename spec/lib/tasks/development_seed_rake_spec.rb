require "rails_helper"
require "rake"

describe "dev namespace rake task", type: :rake do

  describe "dev:prime" do

    before :all do
      Rake.application.rake_require "tasks/development_seed"
      Rake::Task.define_task(:environment)
      Rake::Task.define_task("db:setup")
    end

    let :run_rake_task do
      Rake::Task["dev:prime"].reenable
      Rake.application.invoke_task "dev:prime"
    end

    it "should create eight Candidates" do
      run_rake_task
      expect(Candidate.count).to eq 8
    end

    it "should create four users" do
      run_rake_task
      expect(User.count).to eq 4
    end

  end
end
