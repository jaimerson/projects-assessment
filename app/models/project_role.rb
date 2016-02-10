class ProjectRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  enum role_type: {
    lead_developer: 0,
    developer: 1,
    client: 2
  }
end
