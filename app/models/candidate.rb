class Candidate < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :party, presence: true, inclusion: { in: :acceptable_party }
  validates :delegate_count, presence: true
  validates :popular_vote_count, presence: true
  validates :status, presence: true, inclusion: { in: :acceptable_status }

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def acceptable_party
    %w(Republican Democrat Independent Third-Party)
  end

  def acceptable_status
    %w(active suspended dropped-out)
  end

end
