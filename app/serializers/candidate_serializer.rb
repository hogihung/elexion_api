class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :party, :delegate_count, :popular_vote_count
end
