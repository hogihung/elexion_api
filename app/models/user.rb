class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :role, presence: true, inclusion: { in: :acceptable_role }
  validates :status, presence: true, inclusion: { in: :acceptable_status }

  def as_json(options={})
    super(:only => [:id, :name, :role])
  end

  private

  def acceptable_role
    %w(admin republican_editor democrat_editor)
  end

  def acceptable_status
    %w(active suspended inactive)
  end
end
