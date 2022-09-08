class Friend < ApplicationRecord
  belongs_to :user
  after_initialize :set_defaults
  validates_presence_of :first_name, :last_name
  # Custom Scopes
  scope :added_by, ->(user) { where(user_id: user.id) }

  def set_defaults
    # self.column ||= default_value
  end

  # Add Defaults on create
  # Integrate Callbacks
  # Integrating DB relationships
end
