require 'rails_helper'

describe Candidate do
  let!(:candidate) { FactoryGirl.create(:trump) }

  it "returns a valid json response" do
    get "/candidates"
    expect(response.status).to eql(200)
    expect(response.content_type).to eq("application/json")
  end

  it "TODO: Need to figure out" do
    get "/candidates"
    puts response.body

    candidate_trump = response_body["candidates"]
    #binding.pry
    #expect(candidate_trump["first_name"]).to eq candidate.first_name
    #expect(response.body).to be_json_eql(%({"id":#{candidate.id}}))
    #expect(response.body).to include_json(%({"id":#{candidate.id}}))

    #candidate_record = %w({"id":35,"first_name":"Donald","last_name":"Trump","party":"Republican","delegate_count":736,"popular_vote_count":7811245})
    #expected_record = %w({"first_name":"Donald","last_name":"Trump","party":"Republican","delegate_count":736,"popular_vote_count":7811245})
    #expect(candidate.to_json).to be_json_eql(expected_record)
  end

  def response_body
    JSON.parse(response.body)
  end

end


